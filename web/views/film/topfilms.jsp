<%--
  Created by IntelliJ IDEA.
  User: Observer
  Date: 2018/6/23
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Top Films · Filmdia</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords"
          content="Premier Realty a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //Meta-Tags -->
    <!-- Custom-Theme-Files -->
    <link rel="stylesheet" href="../../css/lib/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/user.css">
    <link rel="stylesheet" href="../../css/index.css" type="text/css">
    <!-- The pagination bar -->
    <%--<link rel="stylesheet" type="text/css" href="../../css/pagi2.css" media="screen"/>--%>
    <link rel="stylesheet" type="text/css" href="../../css/topfilms.css"/>

    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script src="../../js/mylib.js"></script>


</head>
<body>

<div class="main">
    <div class="sidebar-hover">
        <p class="pagination">
            <span class="page">01</span> / <span class="total-pages">08</span>
        </p>
    </div>
    <div class="sidebar-real">
        <div data-page="1" class="nav-elem nav-1 active"></div>
        <div data-page="2" class="nav-elem nav-2"></div>
        <div data-page="3" class="nav-elem nav-3"></div>
        <div data-page="4" class="nav-elem nav-4"></div>
        <div data-page="5" class="nav-elem nav-5"></div>
        <div data-page="6" class="nav-elem nav-6"></div>
        <div data-page="7" class="nav-elem nav-7"></div>
        <div data-page="8" class="nav-elem nav-8"></div>
    </div>
    <div class="sections">
        <div class="section section-1"
             style="background-image: url(../../images/youth.jpg); background-size: 100% 100%;">

            <div class="header w3layouts-1">
                <!-- Top-Bar -->
                <div class="top-bar w3-1">
                    <div class="container">
                        <div class="header-nav w3-agileits-1">
                            <nav class="navbar navbar-default">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                            data-target="#bs-example-navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <h1><a class="navbar-brand" style="margin-left: 50px" href="../../index.jsp"><img
                                            src="../../images/logo2.png"></a></h1>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <li><a href="../../index.jsp" style="margin-left: 50px">Home</a></li>
                                        <li><a href="library.jsp">Library</a></li>
                                        <li><a class="active" href="topfilms.jsp">Top Films</a></li>
                                    </ul>

                                    <jsp:include page="../common/searchbar.jsp"></jsp:include>

                                    <ul class="user-manage">
                                        <img id="userCenter" src="../../images/Center.png">
                                        <div id="userUnderBox">
                                            <div style="text-indent:0;text-align: center">Hello, <span>xxx</span>!</div>
                                            <ul>
                                                <li><img src="../../images/userCenter.png"/><a href="userCenter.jsp">User
                                                    Center</a></li>
                                                <li><img src="../../images/exit.png"/><a href="" onclick="signOut()">Sign
                                                    Out</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </ul>
                                </div><!-- /navbar-collapse -->
                                <!-- search-scripts -->
                                <script src="../../js/classie.js"></script>
                                <script src="../../js/uisearch.js"></script>
                                <script>
                                    new UISearch(document.getElementById('sb-search'));
                                </script>
                                <!-- //search-scripts -->
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- //Top-Bar -->
            </div>

            <div class="left-part" style="z-index: 8"></div>
            <div class="content" style="z-index: 5;background: rgba(0, 0, 0, 0.4);">
                <div class="bg-part">
                </div>
            </div>
        </div>
        <div class="section section-2">
            <div class="left-part"></div>
            <div class="content">

                <div class="bg-part">
                    <%--<div class="_1sV3Y">--%>
                        <%--<div class="_31ZvR"><a href="https://movie.douban.com/subject/26387939/" target="_blank"--%>
                                               <%--style="background-image: url(&quot;https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2457983084.jpg&quot;);"></a>--%>
                        <%--</div>--%>
                        <%--<div><h2><span class="bli1r">Top 1</span><a href="https://movie.douban.com/subject/26387939/"--%>
                                                                    <%--target="_blank">摔跤吧！爸爸</a></h2>--%>
                            <%--<div class="_2v86N">Dangal</div>--%>
                            <%--<div class="l9yjH">--%>
                                <%--<div class="react-rater is-disabled"><a class="is-active">★</a><a--%>
                                        <%--class="is-active">★</a><a class="is-active">★</a><a class="is-active">★</a><a--%>
                                        <%--class="is-active-half">★</a></div>--%>
                                <%--<span class="_1tnY9">9.1</span><span><!-- react-text: 22475 -->538405--%>
                                <%--<!-- /react-text --><!-- react-text: 22476 --> 人<!-- /react-text -->--%>
                                <%--<!-- react-text: 22477 -->评价<!-- /react-text --></span></div>--%>
                            <%--<div class="_3VvFG"><!-- react-text: 22479 -->--%>
                                <%--　　多少理想主义者背负着别人的嘲讽往前走，而大他们十倍百倍的人一心想看他们笑话，多少人收到打击后一蹶不振，而只有他们十分之一百分之一的人可以触底反弹，这部电影他蒸馏你的热血，让你血气冲上大脑，然后水从眼里流出来，告诉你要成为这样的人。--%>
                                <%--<!-- /react-text --><a href="https://www.douban.com/people/thenewhope/" target="_blank">新希望</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <div id="imdb_top1Box" style="margin-top: 10%;">
                        <div id="imdb_top1" style="margin-left: 600px"></div>
                        <div class="top1_right" id="imdb_top1_right">
                        </div>
                    </div>
                    <div id="imdb_top10" style="margin-top: 35%">
                    </div>
                </div>
                <h2 class="section-heading">IMDB TOP10</h2>
                <p class="additional-text">films</p>
            </div>
        </div>
        <div class="section section-3">
            <div class="left-part"></div>
            <div class="content">
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <h2 class="section-heading">Fancy heading #3</h2>
                <p class="additional-text">Some cool info or hashtags #3</p>
            </div>
        </div>
        <div class="section section-4">
            <div class="left-part"></div>
            <div class="content">
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <h2 class="section-heading">Fancy heading #4</h2>
                <p class="additional-text">Some cool info or hashtags #4</p>
            </div>
        </div>
        <div class="section section-5">
            <div class="left-part"></div>
            <div class="content">
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <h2 class="section-heading">Fancy heading #5</h2>
                <p class="additional-text">Some cool info or hashtags #5</p>
            </div>
        </div>
        <div class="section section-6">
            <div class="left-part"></div>
            <div class="content">
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <h2 class="section-heading">Fancy heading #6</h2>
                <p class="additional-text">Some cool info or hashtags #6</p>
            </div>
        </div>
        <div class="section section-7">
            <div class="left-part"></div>
            <div class="content">
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <h2 class="section-heading">Fancy heading #7</h2>
                <p class="additional-text">Some cool info or hashtags #7</p>
            </div>
        </div>
        <div class="section section-8">
            <div class="left-part"></div>
            <div class="content">
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <div class="bg-part"></div>
                <h2 class="section-heading"><a class="codepen-link" href="https://codepen.io/suez/public/"
                                               target="_blank">Fancy heading #8</a></h2>
                <p class="check-out additional-text">Check out my other <a href="https://codepen.io/suez/public/"
                                                                           target="_blank">pens</a></p>
            </div>
        </div>
    </div>
    <h2 class="scroll-down"></h2>
</div>

<%--<div class="header w3layouts-1">--%>
<%--<!-- Top-Bar -->--%>
<%--<div class="top-bar w3-1" style="background-image: url(../../images/librartFilterBg.jpg)">--%>
<%--<div class="container">--%>
<%--<div class="header-nav w3-agileits-1">--%>
<%--<nav class="navbar navbar-default">--%>
<%--<!-- Brand and toggle get grouped for better mobile display -->--%>
<%--<div class="navbar-header">--%>
<%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"--%>
<%--data-target="#bs-example-navbar-collapse-1">--%>
<%--<span class="sr-only">Toggle navigation</span>--%>
<%--<span class="icon-bar"></span>--%>
<%--<span class="icon-bar"></span>--%>
<%--<span class="icon-bar"></span>--%>
<%--</button>--%>
<%--<h1><a class="navbar-brand" href="../../index.jsp"><img src="../../images/logo2.png"></a></h1>--%>
<%--</div>--%>
<%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
<%--<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">--%>
<%--<ul class="nav navbar-nav ">--%>
<%--<li><a href="../../index.jsp">Home</a></li>--%>
<%--<li><a href="library.jsp">Library</a></li>--%>
<%--<li><a class="active" href="topfilms.jsp">Top Films</a></li>--%>
<%--</ul>--%>

<%--<jsp:include page="../common/searchbar.jsp"></jsp:include>--%>

<%--<ul class="user-manage">--%>
<%--<img id="userCenter" src="../../images/Center.png">--%>
<%--<div id="userUnderBox">--%>
<%--<div style="text-indent:0;text-align: center">Hello, <span>xxx</span>!</div>--%>
<%--<ul>--%>
<%--<li><img src="../../images/userCenter.png"/><a href="userCenter.jsp">User--%>
<%--Center</a></li>--%>
<%--<li><img src="../../images/exit.png"/><a href="" onclick="signOut()">Sign Out</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</ul>--%>
<%--</div><!-- /navbar-collapse -->--%>
<%--<!-- search-scripts -->--%>
<%--<script src="../../js/classie.js"></script>--%>
<%--<script src="../../js/uisearch.js"></script>--%>
<%--<script>--%>
<%--new UISearch(document.getElementById('sb-search'));--%>
<%--</script>--%>
<%--<!-- //search-scripts -->--%>
<%--</nav>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- //Top-Bar -->--%>

<%--</div>--%>

<%--<!-- agileinfo -->--%>
<%--<div class="agileinfo gallery wthree-3">--%>
<%--<div class="cinema_container">--%>
<%--<h3 style="font-weight: bold;margin-top: 100px" id="top">Top Films</h3>--%>

<%--<p class="ttt">Chart of the top 250 films on IMDb and Best Picture Oscar each year.</p>--%>

<%--<h4 class="text-center">--%>
<%--<span id="IMDb" title="IMDb Top 250 Chart">IMDb</span> /--%>
<%--<span id="Oscar" title="Oscar Best Picture Chart">Oscar</span>--%>
<%--</h4>--%>
<%--<div class="bs-docs-example">--%>
<%--<table id="toptable" class="table table-hover">--%>
<%--<colgroup>--%>
<%--<col class="chartPoster">--%>
<%--<col class="chartTitle">--%>
<%--<col class="chartRating">--%>
<%--<col class="chartAdd">--%>
<%--</colgroup>--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<th style="text-align: center">Title</th>--%>
<%--<th style="text-align: center"></th>--%>
<%--<th style="text-align: center">Rating</th>--%>
<%--&lt;%&ndash;<th>Fav</th>&ndash;%&gt;--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody id="tablebody">--%>
<%--<script>--%>
<%--function loadTable(page, imdb_oscar) {--%>
<%--var table_body = document.getElementById('tablebody');--%>
<%--var add = '';--%>
<%--var url = 'views/details.jsp';--%>
<%--var temp = '';--%>
<%--var count = 0;  //count the number of movie shows in a page, max 10--%>
<%--var start = page * 10;--%>
<%--var end = start + 9;--%>

<%--if (imdb_oscar === 0) {--%>
<%--$.ajax({--%>
<%--type: 'post',--%>
<%--url: '/film/getFilmByType.action',--%>
<%--data: {--%>
<%--filmType: 'Top250'--%>
<%--},--%>
<%--success: function (data) {--%>
<%--$.each(data, function (i, item) {--%>
<%--if (count < 10 && i >= start && i <= end) {--%>
<%--url = setQueryString(url, 'filmID', item.filmID);--%>
<%--url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);--%>
<%--temp = '' +--%>
<%--'<tr style="cursor: pointer" onclick="location.href=\'' + url + '\';">' +--%>
<%--'<td style="text-align: center;" >' +--%>
<%--'<a href="' + url + '">' +--%>
<%--'<img style="width: 46px; height: 67px;" src=' + item.posterURL + '>' +--%>
<%--'</a>' +--%>
<%--'</td>' +--%>
<%--'<td>' +--%>
<%--(i + 1) + ". " +--%>
<%--'<a href="' + url + '">' + item.name + '</a>' +--%>
<%--'</td>' +--%>
<%--'<td style="text-align: center">' + item.score + '</td>' +--%>
<%--'</tr>';--%>
<%--add += temp;--%>
<%--count++;--%>
<%--}--%>
<%--});--%>
<%--table_body.innerHTML = add;--%>
<%--}--%>
<%--});--%>
<%--} else {--%>
<%--$.ajax({--%>
<%--type: 'post',--%>
<%--url: '/film/getFilmByType.action',--%>
<%--data: {--%>
<%--filmType: 'Oscar'--%>
<%--},--%>
<%--success: function (data) {--%>
<%--$.each(data, function (i, item) {--%>
<%--if (count < 10 && i >= start && i <= end) {--%>
<%--url = setQueryString(url, 'filmID', item.filmID);--%>
<%--url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);--%>
<%--temp = '' +--%>
<%--'<tr style="cursor: pointer" onclick="location.href=\'' + url + '\';">' +--%>
<%--'<td style="text-align: center;">' +--%>
<%--'<a href="' + url + '">' +--%>
<%--'<img style="width: 46px; height: 67px;" src=' + item.posterURL + '>' +--%>
<%--'</a>' +--%>
<%--'</td>' +--%>
<%--'<td>' +--%>
<%--(i + 1) + ". " +--%>
<%--'<a href="' + url + '">' + item.name + '</a>' +--%>
<%--'</td>' +--%>
<%--'<td style="text-align: center">' + item.score + '</td>' +--%>
<%--'</tr>';--%>
<%--add += temp;--%>
<%--count++;--%>
<%--}--%>
<%--});--%>
<%--table_body.innerHTML = add;--%>
<%--}--%>
<%--});--%>
<%--}--%>

<%--}--%>
<%--</script>--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>

<%--<!--The pagination bar-->--%>
<%--<div id="example" style="text-align: center">--%>
<%--<ul id="pageLimit"></ul>--%>
<%--</div>--%>
<%--<script type="text/javascript" src="../../js/lib/bootstrap-paginator.js"></script>--%>
<%--</div>--%>
<%--</div>--%>

<%--<!--End of the pagination bar-->--%>

<%--&lt;%&ndash;Load the table and pagination&ndash;%&gt;--%>
<%--<script>--%>
<%--$(window).load(function () {--%>

<%--var IMDb_O = 0;--%>
<%--var imdb = document.getElementById('IMDb');--%>
<%--var oscar = document.getElementById('Oscar');--%>
<%--loadTable(0, IMDb_O);--%>
<%--$('#pageLimit').bootstrapPaginator({--%>
<%--currentPage: 1,//当前的请求页面。--%>
<%--totalPages: 9,//一共多少页。--%>
<%--size: "normal",//应该是页眉的大小。--%>
<%--bootstrapMajorVersion: 3,//bootstrap的版本要求。--%>
<%--alignment: "right",--%>
<%--numberOfPages: 10,//一页列出多少数据。--%>
<%--itemTexts: function (type, page, current) {--%>
<%--switch (type) {--%>
<%--case "first":--%>
<%--return "First";--%>
<%--case "prev":--%>
<%--return "Prev";--%>
<%--case "next":--%>
<%--return "Next";--%>
<%--case "last":--%>
<%--return "Last";--%>
<%--case "page":--%>
<%--return page;--%>
<%--}--%>
<%--},--%>
<%--onPageClicked: function (event, originalEvent, type, page) {--%>
<%--loadTable(page - 1, IMDb_O);--%>
<%--}--%>
<%--});--%>

<%--imdb.onclick = function () {--%>
<%--imdb.style.color = '#3774ab';--%>
<%--oscar.style.color = 'gray';--%>
<%--IMDb_O = 0;--%>
<%--loadTable(0, IMDb_O);--%>
<%--// $("#paginate_imdb").paginate({--%>
<%--//     count: 25,--%>
<%--//     start: 1,--%>
<%--//     display: 15,--%>
<%--//     border: false,--%>
<%--//     text_color: '#79B5E3',--%>
<%--//     background_color: 'none',--%>
<%--//     text_hover_color: '#2573AF',--%>
<%--//     background_hover_color: 'none',--%>
<%--//     images: false,--%>
<%--//     mouse: 'press',--%>
<%--//     onChange: function (page_index) {--%>
<%--//         loadTable(page_index - 1, IMDb_O);--%>
<%--//         location.href = '#top';--%>
<%--//     }--%>
<%--// });--%>
<%--$('#pageLimit').bootstrapPaginator({--%>
<%--currentPage: 1,//当前的请求页面。--%>
<%--totalPages: 25,//一共多少页。--%>
<%--size: "normal",//应该是页眉的大小。--%>
<%--bootstrapMajorVersion: 3,//bootstrap的版本要求。--%>
<%--alignment: "right",--%>
<%--numberOfPages: 10,//一页列出多少数据。--%>
<%--itemTexts: function (type, page, current) {--%>
<%--switch (type) {--%>
<%--case "first":--%>
<%--return "First";--%>
<%--case "prev":--%>
<%--return "Prev";--%>
<%--case "next":--%>
<%--return "Next";--%>
<%--case "last":--%>
<%--return "Last";--%>
<%--case "page":--%>
<%--return page;--%>
<%--}--%>
<%--},--%>
<%--onPageClicked: function (event, originalEvent, type, page) {--%>
<%--loadTable(page - 1, IMDb_O);--%>
<%--}--%>
<%--});--%>
<%--};--%>
<%--oscar.onclick = function () {--%>
<%--oscar.style.color = '#3774ab';--%>
<%--imdb.style.color = 'gray';--%>
<%--IMDb_O = 1;--%>
<%--loadTable(0, IMDb_O);--%>
<%--$('#pageLimit').bootstrapPaginator({--%>
<%--currentPage: 1,//当前的请求页面。--%>
<%--totalPages: 9,//一共多少页。--%>
<%--size: "normal",//应该是页眉的大小。--%>
<%--bootstrapMajorVersion: 3,//bootstrap的版本要求。--%>
<%--alignment: "right",--%>
<%--numberOfPages: 10,//一页列出多少数据。--%>
<%--itemTexts: function (type, page, current) {--%>
<%--switch (type) {--%>
<%--case "first":--%>
<%--return "First";--%>
<%--case "prev":--%>
<%--return "Prev";--%>
<%--case "next":--%>
<%--return "Next";--%>
<%--case "last":--%>
<%--return "Last";--%>
<%--case "page":--%>
<%--return page;--%>
<%--}--%>
<%--},--%>
<%--onPageClicked: function (event, originalEvent, type, page) {--%>
<%--loadTable(page - 1, IMDb_O);--%>
<%--}--%>
<%--});--%>
<%--}--%>


<%--});--%>

<%--</script>--%>

<jsp:include page="../common/loginbox.jsp"></jsp:include>

<!--End-slider-script-->
<script src="../../js/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="../../js/search.js"></script>
<script src="../../js/topfilms.js"></script>

<script>
    var imdb_top10 = document.getElementById('imdb_top10');
    var imdb_top1 = document.getElementById('imdb_top1');
    var imdb_top1_right = document.getElementById('imdb_top1_right');
    var imdb_top10Box = '';
    var imdb_top1Box = '';
    var tempreimdbBox = '';
    var filmScore = null;
    var url = 'details.jsp';

    $(window).load(function () {
        getImdb_top10();
        get2017score_top10();
    });

    function getImdb_top10() {
        $.ajax({
            type: 'post',
            url: '/film/getFilmByType.action',
            data: {
                filmType: 'Top250'
            },
            success: function (data) {
                var item = data[0];
                imdb_top10.innerHTML = '';
                url = setQueryString(url, 'filmID', item.filmID);
                url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
                filmScore = item.score;
                if (filmScore === 0) {
                    filmScore = '';
                }
                imdb_top1Box = '' +
                    '<div class="col-md-4" style="width: 180px;height: 222px">' +
                    '<div class="content-grid-effect slow-zoom vertical">' +
                    '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
                    '<div class="img-box">' +
                    '<img src=' + item.posterURL + ' alt="image" class="img-responsive zoom-img">' +
                    '</div>' +
                    '<div class="info-box">' +
                    '<div class="caption_overlay text-center">' +
                    '<div class="primary" style="font-size: 12px">' +
                    '<a href="' + url + '">' + item.name + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</a>' +
                    '</div>' +
                    '</div>';
                imdb_top1.innerHTML = imdb_top1Box;


                var star = '<img style="width: 17px" src="../../images/star-small.png" />';
                var star_dark = '<img style="width: 17px" src="../../images/star-small-dark.png" />';
                var filmStar = '';
                var j = 0;
                for (; j < item.score - 1; j++) {
                    filmStar += star;
                }
                while (j < 10) {
                    filmStar += star_dark;
                    j++;
                }

                imdb_top1_right.innerHTML = '' +
                    '<div class="" style="font-size: 15px;margin-top: 10px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">' +
                    '<span class="bli1r">Top 1</span>' +

                    '<a style="color: white; margin-left: 5px" href="' + url + '">' + item.name + '</a>' +
                    '</div>' +

                    '<div class="">' +
                    '<span style="color: orange;font-size: 15px;margin-left: 10px">' + '&nbsp;' + filmStar + '</span>' +
                    '<span style="color: orange;font-size: 15px;margin-left: 10px; margin-top: 5px">' + '&nbsp;' + filmScore + '</span>' +
                    '</div>' +
                    '<div class="" style="    max-width: 300px;font-size: 14px;margin-top: 30px; margin-left: 15px; margin-right: 10px; margin-bottom: 10px;color: darkgray">' +
                    '<p style="text-align: left">' + item.summary + '</p>' +
                    '</div>';

                for (var i = 1; i < 10; i++) {
                    item = data[i];
                    imdb_top10.innerHTML = '';
                    url = setQueryString(url, 'filmID', item.filmID);
                    url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
                    filmScore = item.score;
                    if (filmScore === 0) {
                        filmScore = '';
                    }
                    tempreimdbBox = '' +
                        '<div class="col-md-4" style="width: 10%;height: 161px">' +
                        '<div class="content-grid-effect slow-zoom vertical">' +
                        '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
                        '<div class="img-box">' +
                        '<img src=' + item.posterURL + ' alt="image" class="img-responsive zoom-img">' +
                        '</div>' +
                        '<div class="info-box">' +
                        '<span style="background-color: orange;color: white;font-size: 15px">&nbsp;' + (i + 1) + '&nbsp;</span>' +
                        '<div class="caption_overlay text-center">' +
                        '<div class="primary" style="font-size: 12px">' +
                        '<a href="' + url + '">' + item.name + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '</div>';
                    imdb_top10Box += tempreimdbBox;
                }
                imdb_top10.innerHTML = imdb_top10Box;
            }
        });

    }

    function get2017score_top10() {
        $.ajax({
            type: 'post',
            url: '/film/getTopFilms.action',
            data: {
                year : 2017,
                factor : "score",
                n : 10
            },
            success: function (data) {
                console.log(data);
//                var item = data[0];
//                imdb_top10.innerHTML = '';
//                url = setQueryString(url, 'filmID', item.filmID);
//                url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
//                filmScore = item.score;
//                if (filmScore === 0) {
//                    filmScore = '';
//                }
//                imdb_top1Box = '' +
//                    '<div class="col-md-4" style="width: 180px;height: 222px">' +
//                    '<div class="content-grid-effect slow-zoom vertical">' +
//                    '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
//                    '<div class="img-box">' +
//                    '<img src=' + item.posterURL + ' alt="image" class="img-responsive zoom-img">' +
//                    '</div>' +
//                    '<div class="info-box">' +
//                    '<div class="caption_overlay text-center">' +
//                    '<div class="primary" style="font-size: 12px">' +
//                    '<a href="' + url + '">' + item.name + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
//                    '</div>' +
//                    '</div>' +
//                    '</div>' +
//                    '</a>' +
//                    '</div>' +
//                    '</div>';
//                imdb_top1.innerHTML = imdb_top1Box;
//
//
//                var star = '<img style="width: 17px" src="../../images/star-small.png" />';
//                var star_dark = '<img style="width: 17px" src="../../images/star-small-dark.png" />';
//                var filmStar = '';
//                var j = 0;
//                for (; j < item.score - 1; j++) {
//                    filmStar += star;
//                }
//                while (j < 10) {
//                    filmStar += star_dark;
//                    j++;
//                }
//
//                imdb_top1_right.innerHTML = '' +
//                    '<div class="" style="font-size: 15px;margin-top: 10px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px">' +
//                    '<span class="bli1r">Top 1</span>' +
//
//                    '<a style="color: white; margin-left: 5px" href="' + url + '">' + item.name + '</a>' +
//                    '</div>' +
//
//                    '<div class="">' +
//                    '<span style="color: orange;font-size: 15px;margin-left: 10px">' + '&nbsp;' + filmStar + '</span>' +
//                    '<span style="color: orange;font-size: 15px;margin-left: 10px; margin-top: 5px">' + '&nbsp;' + filmScore + '</span>' +
//                    '</div>' +
//                    '<div class="" style="    max-width: 300px;font-size: 14px;margin-top: 30px; margin-left: 15px; margin-right: 10px; margin-bottom: 10px;color: darkgray">' +
//                    '<p style="text-align: left">' + item.summary + '</p>' +
//                    '</div>';
//
//                for (var i = 1; i < 10; i++) {
//                    item = data[i];
//                    imdb_top10.innerHTML = '';
//                    url = setQueryString(url, 'filmID', item.filmID);
//                    url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
//                    filmScore = item.score;
//                    if (filmScore === 0) {
//                        filmScore = '';
//                    }
//                    tempreimdbBox = '' +
//                        '<div class="col-md-4" style="width: 10%;height: 161px">' +
//                        '<div class="content-grid-effect slow-zoom vertical">' +
//                        '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
//                        '<div class="img-box">' +
//                        '<img src=' + item.posterURL + ' alt="image" class="img-responsive zoom-img">' +
//                        '</div>' +
//                        '<div class="info-box">' +
//                        '<span style="background-color: orange;color: white;font-size: 15px">&nbsp;' + (i + 1) + '&nbsp;</span>' +
//                        '<div class="caption_overlay text-center">' +
//                        '<div class="primary" style="font-size: 12px">' +
//                        '<a href="' + url + '">' + item.name + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
//                        '</div>' +
//                        '</div>' +
//                        '</div>' +
//                        '</a>' +
//                        '</div>' +
//                        '</div>';
//                    imdb_top10Box += tempreimdbBox;
//                }
//                imdb_top10.innerHTML = imdb_top10Box;
            }
        });

    }

</script>

</body>
</html>
