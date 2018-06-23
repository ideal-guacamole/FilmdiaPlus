/**
 * Created by Ferriswheel on 2017/5/17.
 */
var poster = document.getElementById('poster');
var title = document.getElementById('title');
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
            for (var key in castMap) {
                var rowNum = castTable.rows.length;
                var newRow = castTable.insertRow(rowNum);
                var col1 = newRow.insertCell(0); //pic
                col1.innerHTML = rowNum;
                var col2 = newRow.insertCell(1); //name
                col2.innerHTML = key;
                var col3 = newRow.insertCell(2); //role
                col3.innerHTML = castMap[key];
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
            var i = 1;
            var add = '';
            for (var key in castMap) {
                // var rowNum = castTable.rows.length;
                // var newRow = castTable.insertRow(rowNum);
                // var col1 = newRow.insertCell(0); //pic
                // col1.innerHTML = rowNum;
                // var col2 = newRow.insertCell(1); //name
                // col2.innerHTML = key;
                // var col3 = newRow.insertCell(2); //role
                // col3.innerHTML = castMap[key];
                add = '<tr>' +
                    '<td>' + i + '</td>' +
                    '<td>' + key + '</td>>' +
                    '<td>' + castMap[key] + '</td>' +
                    '</tr>>';
                casttbody += add
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
}


//加载评论
var reviewBox = document.getElementById('reviewBox');
var review = '';
var reviewNum = 0;
var reviewData;
var num;
$.ajax({
    type: 'post',
    url: '/review/getReviews.action',
    contentType: 'application/json;charset=utf-8',
    data: imdb_filmID,
    success: function (data) {
        review = '';
        reviewNum = data.length;
        reviewData = data;
        num = 0;
    }
});

//评论排序
var helpfulness_btn = document.getElementById('helpfulness_btn');
var release_btn = document.getElementById('release_btn');
var order_btn = document.getElementById('order_btn');
var reviewSort = null;
helpfulness_btn.addEventListener('click', function (e) {
    e.preventDefault();
    reviewSort = 'MostHelpful';
    sortReviews();
    release_btn.className = "";
    helpfulness_btn.className = "selected_sort";
});
release_btn.addEventListener('click', function (e) {
    e.preventDefault();
    reviewSort = 'Latest';
    sortReviews();
    release_btn.className = "selected_sort";
    helpfulness_btn.className = "";
});
order_btn.addEventListener('click', function (e) {
   if (reviewSort==='Latest' || reviewSort==='Oldest') {
       if (reviewSort==='Latest') {
           reviewSort = 'Oldest';
           sortReviews();
       } else {
           reviewSort = 'Latest';
           sortReviews();
       }
   } else {
       if (reviewSort==='MostHelpful') {
           reviewSort = 'LeastHelpful';
           sortReviews();
       } else {
           reviewSort = 'MostHelpful';
           sortReviews();
       }
   }
});

function sortReviews() {
    $.ajax({
        type: 'post',
        url: '/review/getSortedReviews.action',
        data: {
            imdb_filmID: imdb_filmID,
            reviewSort: reviewSort,
        },
        success: function (data) {
            reviewBox.innerHTML = '';
            review = '';
            putReviews(data);
            reviewNum = data.length;
            console.log(data);
        }
    });
}
function putReviews() {
    var star = '<img style="width: 17px" src="../images/star-small.png" />';
    var star_dark = '<img style="width: 17px" src="../images/star-small-dark.png" />';
    console.log(reviewNum);
    var i = num;
    if(i === reviewNum) {
        review = '';
        return;
    }
        var filmStar = '';
        var j = 0;
        for (; j < reviewData[i].score; j++) {
            filmStar += star;
        }
        while (j < 10) {
            filmStar += star_dark;
            j++;
        }
        var helpfulnessArray = reviewData[i].helpfulness.split("/");
        var like = helpfulnessArray[0].replace(/,/g, "");
        var dislike = helpfulnessArray[1].replace(/,/g, "") - like;
        var fullContentText = reviewData[i].text;
        var smallContentText;
        if (fullContentText.length > 700) {
            smallContentText = reviewData[i].text.substr(0, 700) + '... ';

            review = '' +
                '<div class="review_part">\n' +
                '  <div class="review_title">\n' +
                '    <span class="review_userName">' + reviewData[i].userName + '</span>\n' +
                '    <span class="review_time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + reviewData[i].time + '</span>   \n' +
                '    <div style="display:inline-block;position:absolute;top:13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + filmStar + '</div>\n' +
                '  </div>\n' +
                '  <span class="review_summary">' + reviewData[i].summary + '</span>\n' +
                '  <div class="review_text" id="smallContent' + i + '" style="display:block">' + smallContentText + '(\n' +
                '    <a href="javascript:" style="font-weight: bold" onclick="expend(' + i + ')" >unfold</a> )\n' +
                '  </div>\n' +
                '  <div class="review_text" id="fullContent' + i + '" style="display:none">' + fullContentText + '(\n' +
                '    <a href="javascript:" style="font-weight: bold" onclick="expend(' + i + ')" >fold</a> )\n' +
                '  </div>\n' +
                '  <div class="review_footer">&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '    <span class="glyphicon glyphicon-thumbs-up" style="color: green; margin-right: 5px"></span>   \n' +
                '    <span style="font-size: 11px; color:#737373">' + like + '</span>&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '    <span class="glyphicon glyphicon-thumbs-down" style="margin-left: 10px; margin-right: 5px"></span>\n' +
                '    <span style="font-size: 11px; color:#737373">' + dislike + '</span>\n' +
                '  </div>  \n' +
                '</div>';
        } else {
            smallContentText = fullContentText;

            review = '' +
                '<div class="review_part">\n' +
                '  <div class="review_title">\n' +
                '    <span class="review_userName">' + reviewData[i].userName + '</span>\n' +
                '    <span class="review_time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + reviewData[i].time + '</span>   \n' +
                '    <div style="display:inline-block;position:absolute;top:13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + filmStar + '</div>\n' +
                '  </div>\n' +
                '  <span class="review_summary">' + reviewData[i].summary + '</span>\n' +
                '  <div class="review_text" id="smallContent' + i + '" style="display:block">' + smallContentText + '\n' +
                '  </div>\n' +
                '  <div class="review_text" id="fullContent' + i + '" style="display:none">' + fullContentText + '\n' +
                '  </div>\n' +
                '  <div class="review_footer">&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '    <span class="glyphicon glyphicon-thumbs-up" style="color: green; margin-right: 5px"></span>   \n' +
                '    <span style="font-size: 11px; color:#737373">' + like + '</span>&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '    <span class="glyphicon glyphicon-thumbs-down" style="margin-left: 10px; margin-right: 5px"></span>\n' +
                '    <span style="font-size: 11px; color: #737373">' + dislike + '</span>\n' +
                '  </div>  \n' +
                '</div>';
        }

    num += 1;

}

function expend(i) {
    var fullContent = document.getElementById('fullContent' + i);
    var smallContent = document.getElementById('smallContent' + i);

    fullContent.style.display = (fullContent.style.display === 'none') ? '' : 'none';
    smallContent.style.display = (smallContent.style.display === 'none') ? '' : 'none';
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
        alert('Please sign in first.');
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
                alert('Successfully added!\nYou can check it in User Center.');
                add_fav.setAttribute("disabled", "true");
                add_fav.innerHTML = "Added to Favorite";
            } else {
                alert('You have already added it!');
            }

        }
    });
}

function getFilm() {
    return film;
}

function getReviewNum() {
    return reviewNum;
}


// 加载评论
var commentBox = document.getElementById('commentForm');

//如果用户未登录则提示登陆

if (userid === 0) {
    commentBox.innerHTML = '<span style="font-size: 16px">' +
        '<button type="button" class="add_button btn btn-primary btn-round" id="SignIn" style="margin: auto 9px;">Sign in</button>' +
        'and comment'+
        '</span>';
} else {
    //展示添加评论界面
    commentBox.innerHTML = '<h1>Add Your Comment\
                    <span>Please fill all the texts in the fields.</span>\
                    </h1>\
                    <label>\
                    <span>Score :</span>\
                </label>\
                <div id="starBox" style="height: 40px;display: inline-block;padding-top: 8px">\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    <img style="width:18px;" src="../images/star-small-dark.png" />\
                    </div>\
                    <label>\
                    <span>Summary :</span>\
                <input id="commentSummary" type="text" name="user_summary"\
                placeholder="Summary of Your Review"/>\
                    </label>\
                    <label>\
                    <span>Text :</span>\
                <textarea id="commentText" name="text" placeholder="Content of Your Review"></textarea>\
                    </label>\
                    <span>&nbsp;</span>\
                <input id="commitBtn" type="button" class="button" value="Send"/>';
    var commentScore = document.getElementById('commentScore');
    var commentSummary = document.getElementById('commentSummary');
    var commentText = document.getElementById('commentText');
    var commitBtn = document.getElementById('commitBtn');
    commitBtn.style.float = "right";
    commitBtn.style.marginRight = "10%";
    var starBox = document.getElementById('starBox');
    starBox.stars = 0;
    var userStarBox = document.getElementById('userScore');
    userStarBox.stars = 0;
    var stars = starBox.getElementsByTagName('img');
    for (var i = 0; i < stars.length; i++) {
        stars[i].index = i + 1;
        stars[i].onclick = function () {
            var j = 0;
            for (; j < this.index; j++) {
                stars[j].src = '../images/star-small.png';
            }
            for (var k = 0; k < (10 - this.index); k++) {
                stars[j + k].src = '../images/star-small-dark.png';
            }
            starBox.stars = j;
        }
    }
    var userStars = userStarBox.getElementsByTagName('img');
    for (var i = 0; i < userStars.length; i++) {
        userStars[i].index = i + 1;
        userStars[i].onclick = function () {
            var j = 0;
            for (; j < this.index; j++) {
                userStars[j].src = '../images/star-small.png';
            }
            for (var k = 0; k < (10 - this.index); k++) {
                userStars[j + k].src = '../images/star-small-dark.png';
            }
            userStarBox.stars = j;
        }
    }
    //如果有历史评论则展示历史评论
    $.ajax({
        type: 'post',
        url: '/user/getPersonalReview.action',
        contentType: 'application/json',
        data: userid,
        success: function (data) {
            if (data === null || data.length === 0) {
                return false;
            }

            var beCommented = false;
            var thisComment;
            for (var i = 0; i < data.length; i++) {
                if (data[i].imdb_filmID === imdb_filmID) {
                    beCommented = true;
                    thisComment = data[i];
                }
            }
            if (beCommented) {
                //右上角的星星
                var upstars = '';
                for (var j = 0; j < thisComment.score; j++) {
                    upstars += '<img style="width: 15px" src="../images/star-small.png" />';
                }
                for (var j = 0; j < (10 - thisComment.score); j++) {
                    upstars += '<img style="width: 15px" src="../images/star-small-dark.png" />';
                }
                document.getElementById('userScore').innerHTML = upstars;
                for (var i = 0; i < userStars.length; i++) {
                    userStars[i].index = i + 1;
                    userStars[i].onclick = function () {
                        var j = 0;
                        for (; j < this.index; j++) {
                            userStars[j].src = '../images/star-small.png';
                        }
                        for (var k = 0; k < (10 - this.index); k++) {
                            userStars[j + k].src = '../images/star-small-dark.png';
                        }
                        userStarBox.stars = j;
                        //TODO: 更新评分逻辑待完成
                    // <%--let date = new Date();--%>
                    //     <%--date = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();--%>
                    //     <%--let review = {--%>
                    //         <%--reviewID: null,--%>
                    //     <%--time: date,--%>
                    //     <%--helpfulness: null,--%>
                    //     <%--summary: thisComment.summary,--%>
                    //     <%--text: thisComment.text,--%>
                    //     <%--imdb_filmID: imdb_filmID,--%>
                    //     <%--userName: '<%=userAccount.getUserName()%>',--%>
                    //     <%--userCountry: 'China',--%>
                    //     <%--score: userStarBox.stars,--%>
                    //     <%--userInfo_userID: '<%=userAccount.getUserID()%>'--%>
                    //     <%--};--%>
                    //     <%--$.ajax({--%>
                    //         <%--type: 'post',--%>
                    //     <%--url: '/user/addPersonalReview.action',--%>
                    //     <%--contentType: 'application/json',--%>
                    //     <%--data: JSON.stringify(review),--%>
                    //     <%--success: function (data) {--%>
                    //     <%--if (data.result === 'success') {--%>
                    //     <%--alert('Comment Success!');--%>
                    //     <%--window.location.reload(true);--%>
                    //     <%--}--%>
                    //     <%--else {--%>
                    //     <%--alert('Comment Failed!');--%>
                    //     <%--}--%>
                    //     <%--}--%>
                    //     <%--});--%>
                    }
                }

                var stars = '';
                for (var j = 0; j < thisComment.score; j++) {
                    stars += '<img style="width: 18px" src="../images/star-small.png" />';
                }
                for (var j = 0; j < (10 - thisComment.score); j++) {
                    stars += '<img style="width: 18px" src="../images/star-small-dark.png" />';
                }
                var reviewDiv = '<form action="" method="post" class="basic-grey">\
                                <h1>History Review\
                                </h1>\
                                <label>\
                                    <span>Score :</span>\
                                </label>\
                                <div id="starBox" style="height: 40px;display: inline-block;padding-top: 8px">\
                                ' + stars + '\
                                </div>\
                                <label>\
                                    <span>Summary :</span>\
                                    <label style="color: black;line-height: 35px">' + thisComment.summary + '</label>\
                                </label>\
                                <label>\
                                    <span>Text :</span>\
                                    <div style="color: black;width: 500px;margin-left: 180px;height: 200px;line-height: 35px;">' + thisComment.text + '</div>\
                                </label>\
                            </form>';
                commentBox.parentNode.innerHTML = reviewDiv;
            }
        }
    });
    commitBtn.addEventListener('click', function (e) {
        e.stopPropagation();
        if (starBox.stars === 0) {
            layer.tips('not null', '#starBox', {
                tips: [2, 'red']
            });
        }
        else if (commentSummary.value === '') {
            layer.tips('not null', '#commentSummary', {
                tips: [2, 'red']
            });
        }
        else if (commentText.value === '') {
            layer.tips('not null', '#commentText', {
                tips: [2, 'red']
            });
        }
        else {
            var date = new Date();
            date = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
            var review = {
                reviewID: null,
                time: date,
                helpfulness: null,
                summary: commentSummary.value,
                text: commentText.value,
                imdb_filmID: imdb_filmID,
                userName: username,
                userCountry: 'China',
                score: starBox.stars,
                userInfo_userID: userid
            };
            $.ajax({
                type: 'post',
                url: '/user/addPersonalReview.action',
                contentType: 'application/json',
                data: JSON.stringify(review),
                success: function (data) {
                    if (data.result === 'success') {
                        layer.msg('Comment Successfully!', {icon: 6}, function () {
                            window.location.reload(true);
                        });
                    }
                    else {
                        layer.msg('Comment Failed!', {icon: 5}, function () {
                        });
                    }
                }
            });
        }
    });
}


