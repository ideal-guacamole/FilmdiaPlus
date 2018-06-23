var thisweek_film1_pic = document.getElementById('thisweek_film1_pic');
var thisweek_film1_name = document.getElementById('thisweek_film1_name');
var thisweek_film1_summary = document.getElementById('thisweek_film1_summary');
var thisweek_film1_url = document.getElementById('thisweek_film1_url');
var thisweek_film2_pic = document.getElementById('thisweek_film2_pic');
var thisweek_film2_name = document.getElementById('thisweek_film2_name');
var thisweek_film2_summary = document.getElementById('thisweek_film2_summary');
var thisweek_film2_url = document.getElementById('thisweek_film2_url');
var thisweek_film3_pic = document.getElementById('thisweek_film3_pic');
var thisweek_film3_name = document.getElementById('thisweek_film3_name');
var thisweek_film3_summary = document.getElementById('thisweek_film3_summary');
var thisweek_film3_url = document.getElementById('thisweek_film3_url');
var thisweek_film4_pic = document.getElementById('thisweek_film4_pic');
var thisweek_film4_name = document.getElementById('thisweek_film4_name');
var thisweek_film4_summary = document.getElementById('thisweek_film4_summary');
var thisweek_film4_url = document.getElementById('thisweek_film4_url');
var thisweek_film5_pic = document.getElementById('thisweek_film5_pic');
var thisweek_film5_name = document.getElementById('thisweek_film5_name');
var thisweek_film5_summary = document.getElementById('thisweek_film5_summary');
var thisweek_film5_url = document.getElementById('thisweek_film5_url');

var latest_film1_pic = document.getElementById('latest_film1_pic');
var latest_film1_name = document.getElementById('latest_film1_name');
var latest_film1_summary = document.getElementById('latest_film1_summary');
var latest_film1_url = document.getElementById('latest_film1_url');
var latest_film2_pic = document.getElementById('latest_film2_pic');
var latest_film2_name = document.getElementById('latest_film2_name');
var latest_film2_summary = document.getElementById('latest_film2_summary');
var latest_film2_url = document.getElementById('latest_film2_url');
var latest_film3_pic = document.getElementById('latest_film3_pic');
var latest_film3_name = document.getElementById('latest_film3_name');
var latest_film3_summary = document.getElementById('latest_film3_summary');
var latest_film3_url = document.getElementById('latest_film3_url');
var latest_film4_pic = document.getElementById('latest_film4_pic');
var latest_film4_name = document.getElementById('latest_film4_name');
var latest_film4_summary = document.getElementById('latest_film4_summary');
var latest_film4_url = document.getElementById('latest_film4_url');
var latest_film5_pic = document.getElementById('latest_film5_pic');
var latest_film5_name = document.getElementById('latest_film5_name');
var latest_film5_summary = document.getElementById('latest_film5_summary');
var latest_film5_url = document.getElementById('latest_film5_url');

var coming_film1_pic = document.getElementById('coming_film1_pic');
var coming_film1_name = document.getElementById('coming_film1_name');
var coming_film1_summary = document.getElementById('coming_film1_summary');
var coming_film1_url = document.getElementById('coming_film1_url');
var coming_film2_pic = document.getElementById('coming_film2_pic');
var coming_film2_name = document.getElementById('coming_film2_name');
var coming_film2_summary = document.getElementById('coming_film2_summary');
var coming_film2_url = document.getElementById('coming_film2_url');
var coming_film3_pic = document.getElementById('coming_film3_pic');
var coming_film3_name = document.getElementById('coming_film3_name');
var coming_film3_summary = document.getElementById('coming_film3_summary');
var coming_film3_url = document.getElementById('coming_film3_url');
var coming_film4_pic = document.getElementById('coming_film4_pic');
var coming_film4_name = document.getElementById('coming_film4_name');
var coming_film4_summary = document.getElementById('coming_film4_summary');
var coming_film4_url = document.getElementById('coming_film4_url');
var coming_film5_pic = document.getElementById('coming_film5_pic');
var coming_film5_name = document.getElementById('coming_film5_name');
var coming_film5_summary = document.getElementById('coming_film5_summary');
var coming_film5_url = document.getElementById('coming_film5_url');

var filmlist=null;
var film=null;

function setFilm(filmVO, name, pic, summary, url) {
    name.innerHTML = filmVO.name;
    pic.src = filmVO.posterURL;
    summary.innerHTML = filmVO.summary;

    var temp = 'views/details.jsp';
    temp = setQueryString(temp, 'filmID', filmVO.filmID);
    temp = setQueryString(temp, 'imdb_filmID', filmVO.imdb_filmID);
    temp = setQueryString(temp, 'name', filmVO.name);
    url.href = temp;
}


$(function() {
    $('.title-list li').mouseover(function () {
        var liindex = $('.title-list li').index(this);
        $(this).addClass('on').siblings().removeClass('on');
        $('.product-wrap div.product').eq(liindex).fadeIn(150).siblings('div.product').hide();
        var liWidth = $('.title-list li').width();
        $('.latestinfo .title-list p').stop(false, true).animate({'left': liindex * liWidth + 'px'}, 300);


        //hover效果
        // $('.product-wrap .product li').hover(function(){
        // 	$(this).css("border-color","#ff6600");
        // 	$(this).find('p > a').css('color','#ff6600');
        // },function(){
        // 	$(this).css("border-color","#fafafa");
        // 	$(this).find('p > a').css('color','#666666');
        // });
    });
});

$(window).load(function () {
    $.ajax({
        type: 'post',
        url: '/film/getFilmByType.action',
        data: {
            filmType: 'ThisWeek'
        },
        success: function (data) {
            filmlist = data;

            setFilm(filmlist[0], thisweek_film1_name, thisweek_film1_pic, thisweek_film1_summary, thisweek_film1_url);
            setFilm(filmlist[1], thisweek_film2_name, thisweek_film2_pic, thisweek_film2_summary, thisweek_film2_url);
            setFilm(filmlist[2], thisweek_film3_name, thisweek_film3_pic, thisweek_film3_summary, thisweek_film3_url);
            setFilm(filmlist[3], thisweek_film4_name, thisweek_film4_pic, thisweek_film4_summary, thisweek_film4_url);
            setFilm(filmlist[4], thisweek_film5_name, thisweek_film5_pic, thisweek_film5_summary, thisweek_film5_url);

        }
    });

    $.ajax({
        type: 'post',
        url: '/film/getFilmByType.action',
        data: {
            filmType: 'Latest'
        },
        success: function (data) {
            filmlist = data;
            setFilm(filmlist[0], latest_film1_name, latest_film1_pic, latest_film1_summary, latest_film1_url);
            setFilm(filmlist[1], latest_film2_name, latest_film2_pic, latest_film2_summary, latest_film2_url);
            setFilm(filmlist[2], latest_film3_name, latest_film3_pic, latest_film3_summary, latest_film3_url);
            setFilm(filmlist[3], latest_film4_name, latest_film4_pic, latest_film4_summary, latest_film4_url);
            setFilm(filmlist[4], latest_film5_name, latest_film5_pic, latest_film5_summary, latest_film5_url);
        }
    });

    $.ajax({
        type: 'post',
        url: '/film/getFilmByType.action',
        data: {
            filmType: 'Coming'
        },
        success: function (data) {
            filmlist = data;
            setFilm(filmlist[0], coming_film1_name, coming_film1_pic, coming_film1_summary, coming_film1_url);
            setFilm(filmlist[1], coming_film2_name, coming_film2_pic, coming_film2_summary, coming_film2_url);
            setFilm(filmlist[2], coming_film3_name, coming_film3_pic, coming_film3_summary, coming_film3_url);
            setFilm(filmlist[3], coming_film4_name, coming_film4_pic, coming_film4_summary, coming_film4_url);
            setFilm(filmlist[4], coming_film5_name, coming_film5_pic, coming_film5_summary, coming_film5_url);
        }
    });
});
