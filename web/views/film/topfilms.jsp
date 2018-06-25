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

    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script src="../../js/mylib.js"></script>

    <!-- The pagination bar -->
    <link rel="stylesheet" type="text/css" href="../../css/pagi2.css" media="screen"/>

</head>
<body>

<div class="header w3layouts-1">
    <!-- Top-Bar -->
    <div class="top-bar w3-1" style="background-image: url(../../images/librartFilterBg.jpg)">
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
                        <h1><a class="navbar-brand" href="../../index.jsp"><img src="../../images/logo2.png"></a></h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">
                            <li><a href="../../index.jsp">Home</a></li>
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
                                    <li><img src="../../images/exit.png"/><a href="" onclick="signOut()">Sign Out</a>
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

<!-- agileinfo -->
<div class="agileinfo gallery wthree-3">
    <div class="cinema_container">
        <h3 style="font-weight: bold;margin-top: 100px" id="top">Top Films</h3>

        <p class="ttt">Chart of the top 250 films on IMDb and Best Picture Oscar each year.</p>

        <h4 class="text-center">
            <span id="IMDb" title="IMDb Top 250 Chart">IMDb</span> /
            <span id="Oscar" title="Oscar Best Picture Chart">Oscar</span>
        </h4>
        <div class="bs-docs-example">
            <table id="toptable" class="table table-hover">
                <colgroup>
                    <col class="chartPoster">
                    <col class="chartTitle">
                    <col class="chartRating">
                    <col class="chartAdd">
                </colgroup>
                <thead>
                <tr>
                    <th style="text-align: center">Title</th>
                    <th style="text-align: center"></th>
                    <th style="text-align: center">Rating</th>
                    <%--<th>Fav</th>--%>
                </tr>
                </thead>
                <tbody id="tablebody">
                <script>
                    function loadTable(page, imdb_oscar) {
                        var table_body = document.getElementById('tablebody');
                        var add = '';
                        var url = 'views/details.jsp';
                        var temp = '';
                        var count = 0;  //count the number of movie shows in a page, max 10
                        var start = page * 10;
                        var end = start + 9;

                        if (imdb_oscar === 0) {
                            $.ajax({
                                type: 'post',
                                url: '/film/getFilmByType.action',
                                data: {
                                    filmType: 'Top250'
                                },
                                success: function (data) {
                                    $.each(data, function (i, item) {
                                        if (count < 10 && i >= start && i <= end) {
                                            url = setQueryString(url, 'filmID', item.filmID);
                                            url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
                                            temp = '' +
                                                '<tr style="cursor: pointer" onclick="location.href=\'' + url + '\';">' +
                                                '<td style="text-align: center;" >' +
                                                '<a href="' + url + '">' +
                                                '<img style="width: 46px; height: 67px;" src=' + item.posterURL + '>' +
                                                '</a>' +
                                                '</td>' +
                                                '<td>' +
                                                (i + 1) + ". " +
                                                '<a href="' + url + '">' + item.name + '</a>' +
                                                '</td>' +
                                                '<td style="text-align: center">' + item.score + '</td>' +
                                                '</tr>';
                                            add += temp;
                                            count++;
                                        }
                                    });
                                    table_body.innerHTML = add;
                                }
                            });
                        } else {
                            $.ajax({
                                type: 'post',
                                url: '/film/getFilmByType.action',
                                data: {
                                    filmType: 'Oscar'
                                },
                                success: function (data) {
                                    $.each(data, function (i, item) {
                                        if (count < 10 && i >= start && i <= end) {
                                            url = setQueryString(url, 'filmID', item.filmID);
                                            url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
                                            temp = '' +
                                                '<tr style="cursor: pointer" onclick="location.href=\'' + url + '\';">' +
                                                '<td style="text-align: center;">' +
                                                '<a href="' + url + '">' +
                                                '<img style="width: 46px; height: 67px;" src=' + item.posterURL + '>' +
                                                '</a>' +
                                                '</td>' +
                                                '<td>' +
                                                (i + 1) + ". " +
                                                '<a href="' + url + '">' + item.name + '</a>' +
                                                '</td>' +
                                                '<td style="text-align: center">' + item.score + '</td>' +
                                                '</tr>';
                                            add += temp;
                                            count++;
                                        }
                                    });
                                    table_body.innerHTML = add;
                                }
                            });
                        }

                    }
                </script>
                </tbody>
            </table>
        </div>

        <!--The pagination bar-->
        <div id="example" style="text-align: center">
            <ul id="pageLimit"></ul>
        </div>
        <script type="text/javascript" src="../../js/lib/bootstrap-paginator.js"></script>
    </div>
</div>

<!--End of the pagination bar-->

<%--Load the table and pagination--%>
<script>
    $(window).load(function () {

        var IMDb_O = 0;
        var imdb = document.getElementById('IMDb');
        var oscar = document.getElementById('Oscar');
        loadTable(0, IMDb_O);
        $('#pageLimit').bootstrapPaginator({
            currentPage: 1,//当前的请求页面。
            totalPages: 9,//一共多少页。
            size: "normal",//应该是页眉的大小。
            bootstrapMajorVersion: 3,//bootstrap的版本要求。
            alignment: "right",
            numberOfPages: 10,//一页列出多少数据。
            itemTexts: function (type, page, current) {
                switch (type) {
                    case "first":
                        return "First";
                    case "prev":
                        return "Prev";
                    case "next":
                        return "Next";
                    case "last":
                        return "Last";
                    case "page":
                        return page;
                }
            },
            onPageClicked: function (event, originalEvent, type, page) {
                loadTable(page - 1, IMDb_O);
            }
        });

        imdb.onclick = function () {
            imdb.style.color = '#3774ab';
            oscar.style.color = 'gray';
            IMDb_O = 0;
            loadTable(0, IMDb_O);
            // $("#paginate_imdb").paginate({
            //     count: 25,
            //     start: 1,
            //     display: 15,
            //     border: false,
            //     text_color: '#79B5E3',
            //     background_color: 'none',
            //     text_hover_color: '#2573AF',
            //     background_hover_color: 'none',
            //     images: false,
            //     mouse: 'press',
            //     onChange: function (page_index) {
            //         loadTable(page_index - 1, IMDb_O);
            //         location.href = '#top';
            //     }
            // });
            $('#pageLimit').bootstrapPaginator({
                currentPage: 1,//当前的请求页面。
                totalPages: 25,//一共多少页。
                size: "normal",//应该是页眉的大小。
                bootstrapMajorVersion: 3,//bootstrap的版本要求。
                alignment: "right",
                numberOfPages: 10,//一页列出多少数据。
                itemTexts: function (type, page, current) {
                    switch (type) {
                        case "first":
                            return "First";
                        case "prev":
                            return "Prev";
                        case "next":
                            return "Next";
                        case "last":
                            return "Last";
                        case "page":
                            return page;
                    }
                },
                onPageClicked: function (event, originalEvent, type, page) {
                    loadTable(page - 1, IMDb_O);
                }
            });
        };
        oscar.onclick = function () {
            oscar.style.color = '#3774ab';
            imdb.style.color = 'gray';
            IMDb_O = 1;
            loadTable(0, IMDb_O);
            $('#pageLimit').bootstrapPaginator({
                currentPage: 1,//当前的请求页面。
                totalPages: 9,//一共多少页。
                size: "normal",//应该是页眉的大小。
                bootstrapMajorVersion: 3,//bootstrap的版本要求。
                alignment: "right",
                numberOfPages: 10,//一页列出多少数据。
                itemTexts: function (type, page, current) {
                    switch (type) {
                        case "first":
                            return "First";
                        case "prev":
                            return "Prev";
                        case "next":
                            return "Next";
                        case "last":
                            return "Last";
                        case "page":
                            return page;
                    }
                },
                onPageClicked: function (event, originalEvent, type, page) {
                    loadTable(page - 1, IMDb_O);
                }
            });
        }


    });

</script>

<jsp:include page="../common/loginbox.jsp"></jsp:include>

<script type="text/javascript" src="js/index.js"></script>
<!--End-slider-script-->
<script src="../../js/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="../../js/search.js"></script>

</body>
</html>
