<%--
  Created by IntelliJ IDEA.
  User: Ferriswheel
  Date: 2017/5/16
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>Library · Filmdia</title>
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
    <link rel="stylesheet" href="../../css/swipebox.css">
    <link rel="stylesheet" href="../../css/library.css" type="text/css">
    <link rel="stylesheet" href="../../css/user.css">
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script src="../../js/mylib.js"></script>

    <!-- The pagination bar -->
    <link rel="stylesheet" type="text/css" href="../../css/pagi2.css" media="screen"/>

</head>
<!-- //Head -->
<!-- Body -->
<body>

<!-- Header -->
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
                        <h1><a class="navbar-brand" href="../../index.jsp"><img src="../../images/logo2.png"></a></h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">
                            <li><a href="../../index.jsp">Home</a></li>
                            <li><a class="active" href="library.jsp">Library</a></li>
                            <li><a href="topfilms.jsp">Top Films</a></li>
                        </ul>

                        <jsp:include page="../common/searchbar.jsp"></jsp:include>

                        <ul class="user-manage">
                            <img id="userCenter" src="../../images/Center.png">
                            <div id="userUnderBox">
                                <div style="text-indent:0;text-align: center">Hello, <span>xxx</span>!</div>
                                <ul>
                                    <li><img src="../../images/userCenter.png"/><a href="userCenter.jsp">User
                                        Center</a></li>
                                    <li><img src="../../images/exit.png"/><a href="" onclick="signOut()">Sign Out</a></li>
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
<!-- //Header -->
<div class="gallery wthree-3">
    <!-- The filter -->
    <div id="filterPane">
        <%--<h1 align="center" id="libraryHead">Pick What You Like</h1>--%>
        <div title="Genre" id="genreBox" class="filterBox">
            <table>
                <tr>
                    <td><span class="genreLabel">Sci-Fi</span></td>
                    <td><span class="genreLabel">Crime</span></td>
                    <td><span class="genreLabel">Romance</span></td>
                    <td><span class="genreLabel">Animation</span></td>
                    <td><span class="genreLabel">Comedy</span></td>
                    <td><span class="genreLabel">War</span></td>
                    <td><span class="genreLabel">Horror</span></td>
                    <td><span class="genreLabel">Thriller</span></td>
                    <td><span class="genreLabel">Adventure</span></td>
                    <td><span class="genreLabel">Sport</span></td>
                    <td><span class="genreLabel">Mystery</span></td>
                </tr>
                <tr>

                    <td><span class="genreLabel">Action</span></td>
                    <td><span class="genreLabel">Documentary</span></td>
                    <td><span class="genreLabel">Musical</span></td>
                    <td><span class="genreLabel">History</span></td>
                    <td><span class="genreLabel">Family</span></td>
                    <td><span class="genreLabel">Fantasy</span></td>
                    <td><span class="genreLabel">Biography</span></td>
                    <td><span class="genreLabel">Others</span></td>
                </tr>
                <tr>
                </tr>

            </table>
        </div>
        <div title="Year" id="yearBox" class="filterBox">
            <table>
                <tr>
                    <td><span class="yearLabel">2018</span></td>
                    <td><span class="yearLabel">2017</span></td>
                    <td><span class="yearLabel">2016</span></td>
                    <td><span class="yearLabel">2015</span></td>
                    <td><span class="yearLabel">2014</span></td>
                    <td><span class="yearLabel">2013</span></td>
                    <td><span class="yearLabel">2012</span></td>
                    <td><span class="yearLabel">2011</span></td>
                    <td><span class="yearLabel">2010</span></td>
                    <td><span class="yearLabel">2009</span></td>
                    <td><span class="yearLabel">2008</span></td>
                    <td><span class="yearLabel">2007</span></td>
                    <td><span class="yearLabel">2006</span></td>
                    <td><span class="yearLabel">2005</span></td>
                    <td><span class="yearLabel">2004</span></td>
                </tr>
                <tr>

                    <td><span class="yearLabel">2003</span></td>
                    <td><span class="yearLabel">2002</span></td>
                    <td><span class="yearLabel">2001</span></td>
                    <td><span class="yearLabel">2000</span></td>
                    <td><span class="yearLabel">90s</span></td>
                    <td><span class="yearLabel">80s</span></td>
                    <td><span class="yearLabel">70s</span></td>
                    <td><span class="yearLabel">60s</span></td>
                    <td><span class="yearLabel">50s</span></td>
                    <td><span class="yearLabel">40s</span></td>
                    <td><span class="yearLabel">30s</span></td>
                </tr>
            </table>

        </div>
        <div title="Country" id="countryBox" class="filterBox">
            <table>
                <tr>
                    <td><span class="countryLabel">USA</span></td>
                    <td><span class="countryLabel">China</span></td>
                    <td><span class="countryLabel">UK</span></td>
                    <td><span class="countryLabel">Japan</span></td>
                    <td><span class="countryLabel">France</span></td>
                    <td><span class="countryLabel">Canada</span></td>
                    <td><span class="countryLabel">Australia</span></td>
                    <td><span class="countryLabel">India</span></td>
                    <td><span class="countryLabel">Others</span></td>
                </tr>
            </table>

            <%--<span class="countryLabel">China</span>--%>
            <%--<span class="countryLabel">UK</span>--%>
            <%--<span class="countryLabel">Japan</span>--%>
            <%--<span class="countryLabel">France</span>--%>
            <%--<span class="countryLabel">Canada</span>--%>
            <%--<span class="countryLabel">Australia</span>--%>
            <%--<span class="countryLabel">India</span>--%>
            <%--<span class="countryLabel">Others</span>--%>
        </div>
        <div title="Sort" id="sortBox" class="filterBox">
            <span class="sortLabel">Descend</span>
            <span class="sortLabel">Ascend</span>
        </div>
    </div>
    <!-- End of the filter -->

    <div class="container">
        <div id="filmContainer"></div>

        <div id="example" style="text-align: center">
            <ul id="pageLimit"></ul>
        </div>
        <div class="clearfix"></div>
        <%--<div>--%>
        <%--<div class="content">--%>
        <%--<div class="demo" style="background: rgba(247,247,247,.1); border-color: rgba(247,247,247,.3);">--%>
        <%--<div id="pagination"></div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<script type="text/javascript" src="../js/lib/jquery.paginate.js"></script>--%>

        <%--</div>--%>
        <!--End of the pagination bar-->
        <script type="text/javascript" src="../../js/lib/bootstrap-paginator.js"></script>
    </div>
</div>
<!--/ w3l-1 -->
<%--<a id="returnToPick" href="#top" onclick="javascript:resetFilter()">Pick Again</a>--%>

<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>

<jsp:include page="../common/footer.jsp"></jsp:include>


<!-- swipe box js -->
<script src="../../js/lib/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        $(".swipebox").swipebox();
    });
</script>
<!-- //swipe box js -->

<%--load films--%>
<script>
    window.onload = function () {
        loadLibrary(0);

        var genreBox = document.getElementById('genreBox');
        var yearBox = document.getElementById('yearBox');
        var countryBox = document.getElementById('countryBox');
        var sortBox = document.getElementById('sortBox');

        var genreLabels = genreBox.getElementsByTagName('span');
        var yearLabels = yearBox.getElementsByTagName('span');
        var countryLabels = countryBox.getElementsByTagName('span');
        var sortLabels = sortBox.getElementsByTagName('span');

        var recentGenre = null;
        var recentYear = null;
        var recentCountry = null;
        var recentSort = null;

        filterUtil(genreLabels, 'genreLabel', recentGenre);
        filterUtil(yearLabels, 'yearLabel', recentYear);
        filterUtil(countryLabels, 'countryLabel', recentCountry);
        filterUtil(sortLabels, 'sortLabel', recentSort);

        var libPages = 0;
        $.ajax({
            type: 'get',
            url: '/film/getLibraryTotalPage.action',
            success: function (data) {
                $('#pageLimit').bootstrapPaginator({
                    currentPage: 1,//当前的请求页面。
                    totalPages: data,//一共多少页。
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
                        loadLibrary(page - 1);
                        location.href = '#top';
                    }
                });
                // $("#pagination").paginate({
                //     count: data,
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
                //         loadLibrary(page_index - 1);
                //         location.href = '#top';
                //     }
                // });
            }

        });

    };

    /**
     * 加载电影库
     */
    function loadLibrary(page) {
        var container = document.getElementById('filmContainer');
        var star = '<img style="width: 22px" src="../../images/star-small.png" />';
        var filmImgUrl = null;
        var filmName = null;
        var filmSummary = null;
        var filmScore = null;
        var filmBox = null;

        var temp = '';
        $.ajax({
            type: 'post',
            url: '/film/getLibraryFilms.action',
            contentType: 'application/json;charset=utf-8',
            data: page + '',
            success: function (data) {
                $.each(data, function (i, item) {
                    var filmStar = '';
                    filmName = item.name;
                    filmSummary = item.summary;
                    if (filmSummary.length >= 150) {
                        filmSummary = filmSummary.substring(0, 150);
                        filmSummary += '...';
                    }
//                    filmScore = Math.round(item.score);
                    filmScore = item.score;
                    if (filmScore === 0) {
                        filmScore = '';
                    }
                    for (var j = 0; j < filmScore / 2; j++) {
                        filmStar += star;
                    }
                    filmImgUrl = item.posterURL;

                    var url = 'details.jsp';
                    url = setQueryString(url, 'filmID', item.filmID);
                    url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);

                    filmBox = '' +
                        '<div class="col-md-4 gal-left gal_mar">' +
                        '<div class="content-grid-effect slow-zoom vertical text-center">' +
                        '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
                        '<div class="img-box">' +
                        '<img src=' + filmImgUrl + ' alt="image" class="img-responsive zoom-img">' +
                        '</div>' +
                        '<div class="info-box">' +
                        '<div class="info-content">' +
                        '<p style="text-align: left">' + filmSummary + '</p>' +
                        '</div>' +
                        '<div class="caption_overlay">' +
                        '<div class="primary">' +
                        '<a href="' + url + '">' + filmName + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '</div>';
                    temp += filmBox;

                });
                container.innerHTML = temp;
            }
        });
    }

    var restriction = {
        tag: null,
        time: null,
        country: null,
        scoreSort: null
    };

    /**
     *  筛选条件相关
     */
    function filterUtil(typeArr, name, recentObj) {
        for (var i = 0; i < typeArr.length; i++) {
            typeArr[i].onclick = function () {
                if (!this.isClick) {
                    this.className += ' active';
                }
                else {
                    this.className = name;
                }
                if (recentObj != null && recentObj !== this) {
                    recentObj.className = name;
                    recentObj.isClick = false;
                }
                this.isClick = !this.isClick;
                recentObj = this;

                if (recentObj.isClick) {
                    switch (name) {
                        case 'genreLabel':
                            restriction.tag = recentObj.innerHTML;
                            break;
                        case 'yearLabel':
                            restriction.time = recentObj.innerHTML;
                            break;
                        case 'countryLabel':
                            restriction.country = recentObj.innerHTML;
                            break;
                        case 'sortLabel':
                            restriction.scoreSort = recentObj.innerHTML;
                            break;
                    }
                }
                else {
                    switch (name) {
                        case 'genreLabel':
                            restriction.tag = null;
                            break;
                        case 'yearLabel':
                            restriction.time = null;
                            break;
                        case 'countryLabel':
                            restriction.country = null;
                            break;
                        case 'sortLabel':
                            restriction.scoreSort = null;
                            break;
                    }
                }
                loadFilter(0);
                $.ajax({
                    type: 'post',
                    url: '${pageContext.request.contextPath}/film/getSortedFilmTotalPage.action',
                    data: {
                        time: restriction.time,
                        country: restriction.country,
                        tag: restriction.tag,
                        scoreSort: restriction.scoreSort
                    },
                    success: function (data) {
                        console.log(data);
                        // $("#pagination").paginate({
                        //     count: data,
                        //     start: 1,
                        //     display: 10,
                        //     border: false,
                        //     text_color: '#79B5E3',
                        //     background_color: 'none',
                        //     text_hover_color: '#2573AF',
                        //     background_hover_color: 'none',
                        //     images: false,
                        //     mouse: 'press',
                        //     onChange: function (page_index) {
                        //         loadFilter(page_index - 1);
                        //         location.href = '#top';
                        //     }
                        // });
                        $('#pageLimit').bootstrapPaginator({
                            currentPage: 1,//当前的请求页面。
                            totalPages: data,//一共多少页。
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
                                loadFilter(page - 1);
                                location.href = '#top';
                            }
                        });
                    }
                });

            }
        }

    }

    /**
     *  重置筛选条件
     */
    function resetFilter() {
        var genreBox = document.getElementById('genreBox');
        var yearBox = document.getElementById('yearBox');
        var countryBox = document.getElementById('countryBox');
        var sortBox = document.getElementById('sortBox');

        var genreLabels = genreBox.getElementsByTagName('span');
        var yearLabels = yearBox.getElementsByTagName('span');
        var countryLabels = countryBox.getElementsByTagName('span');
        var sortLabels = sortBox.getElementsByTagName('span');

        var i = 0;
        for (i = 0; i < genreLabels.length; i++) {
            genreLabels[i].className = 'genreLabel';
            genreLabels[i].isClick = false;
        }
        for (i = 0; i < yearLabels.length; i++) {
            yearLabels[i].className = 'yearLabel';
            yearLabels[i].isClick = false;
        }
        for (i = 0; i < countryLabels.length; i++) {
            countryLabels[i].className = 'countryLabel';
            countryLabels[i].isClick = false;
        }
        for (i = 0; i < sortLabels.length; i++) {
            sortLabels[i].className = 'sortLabel';
            sortLabels[i].isClick = false;
        }

        loadLibrary(0);
    }

    /**
     * 筛选后的加载
     * @param page 当前页数
     */
    function loadFilter(page) {
        var container = document.getElementById('filmContainer');
        var star = '<img style="width: 22px" src="../../images/star-small.png" />';
        var filmImgUrl = null;
        var filmName = null;
        var filmSummary = null;
        var filmScore = null;
        var filmBox = null;

        var temp = '';
        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/film/sortTheFilms.action',
            data: {
                time: restriction.time,
                country: restriction.country,
                tag: restriction.tag,
                scoreSort: restriction.scoreSort,
                page: page + ""
            },
            success: function (data) {
                $.each(data, function (i, item) {
                    var filmStar = '';
                    filmName = item.name;
                    filmSummary = item.summary;
                    if (filmSummary.length >= 150) {
                        filmSummary = filmSummary.substring(0, 150);
                        filmSummary += '...';
                    }
//                    filmScore = Math.round(item.score);
                    filmScore = item.score;
                    if (filmScore === 0) {
                        filmScore = '';
                    }
                    for (var j = 0; j < filmScore / 2; j++) {
                        filmStar += star;
                    }
                    filmImgUrl = item.posterURL;

                    var url = 'details.jsp';
                    url = setQueryString(url, 'filmID', item.filmID);
                    url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);

                    filmBox = '' +
                        '<div class="col-md-4 gal-left gal_mar">' +
                        '<div class="content-grid-effect slow-zoom vertical text-center">' +
                        '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
                        '<div class="img-box">' +
                        '<img src=' + filmImgUrl + ' alt="image" class="img-responsive zoom-img">' +
                        '</div>' +
                        '<div class="info-box">' +
                        '<div class="info-content">' +
                        '<p style="text-align: left">' + filmSummary + '</p>' +
                        '</div>' +
                        '<div class="caption_overlay">' +
                        '<div class="primary">' +
                        '<a href="' + url + '">' + filmName + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '</div>';
                    temp += filmBox;

                });
                container.innerHTML = temp;
            }
        });
    }

</script>
<script src="../../js/search.js"></script>


</body>
<!-- //Body -->
</html>
