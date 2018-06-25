<%--
  Created by IntelliJ IDEA.
  User: xyc
  Date: 17-5-22
  Time: 下午9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>SearchResult · Filmdia</title>
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
    <link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/swipebox.css">
    <link rel="stylesheet" href="../../css/searchPage.css" type="text/css">
    <link rel="stylesheet" href="../../css/user.css"/>
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../js/mylib.js"></script>
    <!-- The pagination bar -->
    <link rel="stylesheet" type="text/css" href="../../css/pagi2.css" media="screen"/>

</head>
<!-- //Head -->
<!-- Body -->
<body>
<!--<div style="width:100%; height:100%;">-->
<!--<img src="../images/librartFilterBg.jpg" alt="" style="width: 100%; height: 100%; position: fixed; opacity: 1">-->
<!--</div>-->

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
                            <li><a href="library.jsp">Library</a></li>
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

    </div>
    <!-- End of the filter -->

    <div class="container">
        <div>
            <h5><b id="resultNum"></b> results related to"<b><span id="relateMsg"></span></b>"</h5>
        </div>

        <div id="searchResultContainer">

        </div>
        <div class="clearfix"></div>

    </div>
</div>
<!--/ w3l-1 -->
<jsp:include page="../common/loginbox.jsp"></jsp:include>
<!-- footer -->
<jsp:include page="../common/footer.jsp"></jsp:include>
<!-- footer -->
<!-- swipe box js -->
<script src="../../js/lib/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        $(".swipebox").swipebox();
    });
</script>
<script>
    var searchResultContainer = document.getElementById('searchResultContainer');
    var searchMsg = getQueryString('searchMsg');

    //修复空格在url中编码的问题
    searchMsg = searchMsg.replace(/%20/g, " ");

    // var paginationBar = document.getElementById('paginationBar');
    var relateMsg = document.getElementById('relateMsg');
    var resultNum = document.getElementById('resultNum');
    relateMsg.innerHTML = searchMsg;
    var tempInnerHtml = '';
    $.ajax({
        type: 'post',
        url: '/film/getFilmsByName.action',
        contentType: 'application/json;charset=utf-8',
        data: searchMsg,
        success: function (data) {
            if (data.length === 0) {
                resultNum.innerHTML = 0;
                tempInnerHtml = '<div style="margin: 182px auto;font-size: 20px;height:20px;line-height: 20px;text-align: center">Sorry, We can\'t search anything related to your input.</div>';
                // paginationBar.style.display = 'none';
            }
            else {
                resultNum.innerHTML = data.length;
                $.each(data, function (i, item) {

                    var detailUrl = 'details.jsp';
                    detailUrl = setQueryString(detailUrl, 'filmID', item.filmID);
                    detailUrl = setQueryString(detailUrl, 'imdb_filmID', item.imdb_filmID);

                    //关键词高亮
                    var filmName = item.name;
                    if (searchMsg.length === 1) {
                        if (searchMsg === searchMsg.toUpperCase()) {
                            filmName = filmName.split(searchMsg.toLowerCase()).join('<span>' + searchMsg.toLowerCase() + '</span>');
                            filmName = filmName.split(searchMsg).join('<span>' + searchMsg + '</span>');
                        }
                        else {
                            filmName = filmName.split(searchMsg).join('<span>' + searchMsg + '</span>');
                            filmName = filmName.split(searchMsg.toUpperCase()).join('<span>' + searchMsg.toUpperCase() + '</span>');
                        }
                    }
                    else {
                        for (var j = 0; j < item.name.length; j++) {
                            if (item.name.substring(j, j + searchMsg.length).toLowerCase() === searchMsg.toLowerCase()) {
                                filmName = filmName.split(item.name.substring(j, j + searchMsg.length)).join('<span>' + item.name.substring(j, j + searchMsg.length) + '</span>');
                                j += searchMsg.length - 1;
                            }
                        }
                    }

                    var genre = '';
                    var genres = item.tags;
                    $.each(genres, function (i, gitem) {
                        if (i !== genres.length - 1) {
                            genre += gitem + ', ';
                        }
                        else {
                            genre += gitem;
                        }
                    });
                    var searchItem =
                        '<div class="search_item">' +
                        '<hr>' +
                        '<a href=' + detailUrl + '><img src=' + item.posterURL + ' alt="" />' +
                        '<div class="search_item-info">' +
                        '<div class="search_item-filmName" id="filmName">' + filmName + '</div>' +
                        '<span class="search_item-onTime">' + item.onTime + '</span>' +
                        '<span class="search_item-actors">' + genre + '</span>' +
                        '<span class="search_item-summary">' + item.summary + '</span>' +
                        '</div></a>' +
                        '</div>';
                    tempInnerHtml += searchItem;
                });
            }
            searchResultContainer.innerHTML = tempInnerHtml;

        }

    });
</script>
<script src="../../js/search.js"></script>

<!-- //swipe box js -->
</body>
<!-- //Body -->
</html>