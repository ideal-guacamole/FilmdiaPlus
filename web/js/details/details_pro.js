/**
 * Created by Ferriswheel on 2017/5/17.
 */
var poster = document.getElementById('poster');
var title = document.getElementById('title');
var backgroundurl = '../../images/bgDetail.jpg';
var summary = document.getElementById('summary');
var directors = document.getElementById('directors');
var actors = document.getElementById('actors');
var tags = document.getElementById('tags');
var score = document.getElementById('score');
var country = document.getElementById('country');
var language = document.getElementById('language');
var detail_language = document.getElementById('detail_language');
var detail_onTime = document.getElementById('detail_onTime');
var detail_watchUrl = document.getElementById('detail_watchUrl');
var box_worldGross = document.getElementById('box_worldGross');
var box_gross = document.getElementById('box_gross');
var box_budget = document.getElementById('box_budget');
var storyLine_tagLine = document.getElementById('storyLine_tagLine');
var storyLine_keywords = document.getElementById('storyLine_keywords');
var castBox = document.getElementById('castBox');
var runtime = document.getElementById('runtime');
var castTable = document.getElementById('castTable');
var casttbody = document.getElementById('casttbody ');
var castMap = {};

//core members
var director_pic = document.getElementById('director_pic');
var director_name = document.getElementById('director_name');
var star1_pic = document.getElementById('star1_pic');
var star1_name = document.getElementById('star1_name');
var star2_pic = document.getElementById('star2_pic');
var star2_name = document.getElementById('star2_name');
var star3_pic = document.getElementById('star3_pic');
var star3_name = document.getElementById('star3_name');


var filmID = getQueryString('filmID');
if (filmID == 900) {
    $("#movie-background").css("background-image", "url('../../images/wallpaper/Dangal.jpg')")
} else if (filmID == 359) {
    $("#movie-background").css("background-image", "url('../../images/wallpaper/CMBYN.jpg')")
} else if (filmID == 1) {
    $("#movie-background").css("background-image", "url('../../images/wallpaper/AmericanMade.jpg')")
} else if (filmID == 7183) {
    $("#movie-background").css("background-image", "url('../../images/wallpaper/dag2.jpg')")
} else if (filmID == 353) {
    $("#movie-background").css("background-image", "url('../../images/wallpaper/CaptainAmerica.jpg')")
}
var imdb_filmID = getQueryString('imdb_filmID');
var name = getQueryString('name');
var film = null;
var storyline = document.getElementById('storyline');

//Favorite
var favorite = {
    favoriteID: null,
    filmID: filmID,
    filmName: null,
    score: null,
    category: null,
    userID: null,
    posterURL: null,
    summary: null
};

//split the tags and keywords
function split1(list, obj) {
    var str = '';
    $.each(list, function (i, item) {
        if (i !== list.length - 1) {
            str += item + ' | ';
        }
        else
            str += item;
    });
    obj.innerHTML = str;
}

//split the actors and directors(attached with pic src)
function split2(list, obj) {
    var str = '';
    $.each(list, function (i, item) {
        if (i % 2 == 0) {
            if (i !== list.length - 2) {
                str += item + ' | ';
            }
            else
                str += item;
        }

    });
    obj.innerHTML = str;
}

//core members
//split the actors and directors(attached with pic src)
function split3(list, obj) {
    var str = '';
    $.each(list, function (i, item) {
        if (i % 2 == 0) {
            if (i !== list.length - 2) {
                str += item + ' | ';
            }
            else
                str += item;
        }

    });
    obj.innerHTML = str;
}
$('#backToTop').smoothScroll({
    speed: 1000
});
var backToTop = document.getElementById('backToTop');
window.onscroll = function (ev) {
    var oScroll = document.body.scrollTop || document.documentElement.scrollTop;
    var lock = false;
    if (oScroll < 500) {
        lock = false;
        backToTop.style.display = 'none';
    }
    if (oScroll >= 500 && !lock) {
        lock = true;
        backToTop.style.display = 'block';
    }
}
if (name == 'null') {
    //加载电影详情(电影库电影)
    $.ajax({
        type: 'post',
        url: '/film/getFilm.action',
        contentType: 'application/json;charset=utf-8',
        data: filmID,
        success: function (data) {
            film = data;
            poster.src = film.posterURL;
            favorite.posterURL = film.posterURL;
            title.innerHTML = film.name;
            favorite.filmName = film.name;
            summary.innerHTML = film.summary;
            favorite.summary = film.summary;
            split2(film.directors, directors);
            split2(film.actors, actors);
            split1(film.tags, tags);
            favorite.category = splitCatForFav(film.tags);
            score.innerHTML = film.score;
            favorite.score = film.score;
            country.innerHTML = film.country;
            language.innerHTML = film.gross === 0 ? 'None' : '$' + film.gross;
            runtime.innerHTML = film.runtime === 0 ? 'None' : film.runtime + 'min';
            detail_language.innerHTML = film.language;
            detail_onTime.innerHTML = film.onTime;
            detail_watchUrl.innerHTML = '<a href="' + film.filmWatchURL + '">Click Here to Watch!</a>';


            box_worldGross.innerHTML = film.worldwideGross === 0 ? 'None' : ' $' + film.worldwideGross;
            box_gross.innerHTML = film.gross === 0 ? 'None' : ' $' + film.gross;
            box_budget.innerHTML = film.budget === 0 ? 'None' : ' $' + film.budget;

            //cast table
            castMap = film.cast;
            //遍历cast这个map
            var rowIndex = 0;
            for (var key in castMap) {
                var rowNum = castTable.rows.length;
                var newRow = castTable.insertRow(rowNum);
                var col1 = newRow.insertCell(0); //pic
                col1.innerHTML = rowNum;
                var col2 = newRow.insertCell(1); //name
                col2.innerHTML = key;
                var col3 = newRow.insertCell(2); //...
                col3.innerHTML = "···";
                var col4 = newRow.insertCell(3); //role
                col4.innerHTML = castMap[key];
                if (rowIndex % 2 === 0) {
                    newRow.style.backgroundColor = "rgba(0,0,0,.02)";
                }
                rowIndex++;
            }

            //core members
            var directorlist = film.directors;
            var starlist = film.actors;
            director_name.innerHTML = directorlist[0] + '(Dir)';
            director_pic.src = directorlist[1];
            star1_name.innerHTML = starlist[0];
            star1_pic.src = starlist[1];
            star2_name.innerHTML = starlist[2];
            star2_pic.src = starlist[3];
            star3_name.innerHTML = starlist[4];
            star3_pic.src = starlist[5];

            //storyline
            storyLine_tagLine.innerHTML = film.tagLine;
            split1(film.scriptKeyWords, storyLine_keywords);
            storyline.innerHTML = film.storyline;
        }
    });
} else {
    //加载电影详情(首页影院信息电影)
    $.ajax({
        type: 'post',
        url: '/film/getFilmFromUpdate.action',
        contentType: 'application/json;charset=utf-8',
        data: filmID,
        success: function (data) {
            film = data;
            poster.src = film.posterURL;
            favorite.posterURL = film.posterURL;
            title.innerHTML = film.name;
            favorite.filmName = film.name;
            summary.innerHTML = film.summary;
            favorite.summary = film.summary;
            split2(film.directors, directors);
            split2(film.actors, actors);
            split1(film.tags, tags);
            favorite.category = splitCatForFav(film.tags);
            score.innerHTML = film.score;
            favorite.score = film.score;
            country.innerHTML = film.country;
            language.innerHTML = '$' + film.gross;
            runtime.innerHTML = film.runtime + 'min';
            detail_language.innerHTML = film.language;
            detail_onTime.innerHTML = film.onTime;
            detail_watchUrl.innerHTML = '<a href="' + film.filmWatchURL + '">Click Here to Watch!</a>';

            if (film.worldwideGross != 0) {
                box_worldGross.innerHTML = ' $' + film.worldwideGross;
            } else {
                box_worldGross.innerHTML = ' unknown';
            }

            box_gross.innerHTML = ' $' + film.gross;
            box_budget.innerHTML = ' $' + film.budget;

            //cast table
            castMap = film.cast;
            //遍历cast这个map
            var rowIndex = 0;
            for (var key in castMap) {
                var rowNum = castTable.rows.length;
                var newRow = castTable.insertRow(rowNum);
                var col1 = newRow.insertCell(0); //pic
                col1.innerHTML = rowNum;
                var col2 = newRow.insertCell(1); //name
                col2.innerHTML = key;
                var col3 = newRow.insertCell(2); //...
                col3.innerHTML = "···";
                var col4 = newRow.insertCell(3); //role
                col4.innerHTML = castMap[key];
                if (rowIndex % 2 === 0) {
                    newRow.style.backgroundColor = "rgba(0,0,0,.02)";
                }
                rowIndex++;
            }
            // var i = 1;
            // var add = '';
            // for (var key in castMap) {
            //     var rowNum = castTable.rows.length;
            //     var newRow = castTable.insertRow(rowNum);
            //     var col1 = newRow.insertCell(0); //pic
            //     col1.innerHTML = rowNum;
            //     var col2 = newRow.insertCell(1); //name
            //     col2.innerHTML = key;
            //     var col3 = newRow.insertCell(2); //role
            //     col3.innerHTML = castMap[key];
            //     // add = '<tr>' +
            //     //     '<td>' + i + '</td>' +
            //     //     '<td>' + key + '</td>>' +
            //     //     '<td>' + castMap[key] + '</td>' +
            //     //     '</tr>>';
            //     // casttbody += add
            // }

            //core members
            var directorlist = film.directors;
            var starlist = film.actors;
            director_name.innerHTML = directorlist[0] + '(Dir)';
            director_pic.src = directorlist[1];
            star1_name.innerHTML = starlist[0];
            star1_pic.src = starlist[1];
            star2_name.innerHTML = starlist[2];
            star2_pic.src = starlist[3];
            star3_name.innerHTML = starlist[4];
            star3_pic.src = starlist[5];

            //storyline
            storyLine_tagLine.innerHTML = film.tagLine;
            split1(film.scriptKeyWords, storyLine_keywords);
            storyline.innerHTML = film.storyline;
        }
    });
}


//Category
function splitCatForFav(list) {
    var str = '';
    $.each(list, function (i, item) {
        if (i !== list.length - 1) {
            str += item + '/';
        }
        else
            str += item;
    });
    return str;
}

//添加到用户的已收藏
var add_fav = document.getElementById('add_fav');

function addFav(userid) {
    if (userid === 0) {
        layer.msg('Please sign in first!', {icon: 5}, function () {
        });
        return;
    }
    favorite.userID = userid;
    $.ajax({
        type: 'post',
        url: '/user/addFavorite.action',
        contentType: 'application/json;charset=utf-8',
        data: JSON.stringify(favorite),
        success: function (data) {
            if (data.result === 'success') {
                add_fav.setAttribute("disabled", "true");
                add_fav.innerHTML = "Added to Favorite";
                layer.msg('Successfully added!', {icon: 6}, function () {
                });
            } else {
                layer.msg('You have already added it!', {icon: 5}, function () {
                });
            }

        }
    });
}

function getFilm() {
    return film;
}