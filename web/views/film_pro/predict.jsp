<%--
  Created by IntelliJ IDEA.
  User: Ferriswheel
  Date: 2017/6/5
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>Predict · FilmdiaPro</title>
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
    <%--<link rel="stylesheet" href="../../css/user.css"/>--%>
    <link rel="stylesheet" href="../../css/film_pro/predict.css"/>
    <link rel="stylesheet" href="../../css/film_pro/predict_scroll.css"/>
    <link rel="stylesheet" href="../../css/button.css" type="text/css" media="all">
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
<!-- Header -->

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
        <div class="section section-1">
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
                <%--<h2 class="section-heading"><em>Box Office</em>&nbsp;&nbsp;Prediction&nbsp;&nbsp;Algorithm</h2>--%>
                <%--<p class="additional-text">Some cool info or hashtags #1</p>--%>
                <div class="header" style="position: fixed">
                    <!-- Top-Bar -->
                    <nav class="navbar navbar-default" style="z-index: 300">

                        <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav " style="float:left;padding-left:6.3em;position: fixed">
                                <li><a href="index_pro.jsp" id="nav_home">Home</a></li>
                                <li><a href="library.jsp" id="nav_lib">Library</a></li>
                                <li><a href="statistic.jsp" id="nav_stat">Statistic</a></li>
                                <li><a href="predict.jsp" id="nav_pred">Predict</a></li>
                            </ul>
                        </div>
                    </nav>
                    <!-- //Top-Bar -->
                    <div class="banner">
                        <div class="bann-info">
                            <h3><em>Box Office</em>&nbsp;&nbsp;Prediction&nbsp;&nbsp;Algorithm</h3>
                            <div class="intro">
                                <p>To reasonably forecast the box office of the unpublished films,
                                    we select 1997 movies from USA and Britain since 2009 as a sample
                                    to analysis the relationship between some of their attributes and their final box
                                    office.</p>

                                <p>The attributes required are as follows:
                                    <i>directors, stars, genres, awards and trailer hits on Youtube of the film</i>.</p>

                                <p>Using <span class="yellow">scikit-learn</span>, a tool for <span class="yellow">machine learning in
                Python</span>, we apply different algorithms below to building a mathematical model with those
                                    arguments. </p>
                                <p>
                                <ul>
                                    <li>Linear regression</li>
                                    <li>Lasso regression</li>
                                    <li>K-Nearest Neighbors</li>
                                    <li>Polynomial regression</li>
                                </ul>
                                </p>

                                <p>The existing data will be divided into two parts for <span
                                        class="yellow">supervised learning</span>:
                                    80% for training the model by pairing the input with expected output, and 20%
                                    for testing the accuracy of the model and adjusting the parameters.
                                    With this model, we are able to predict the box office of the movies opening this
                                    week
                                    or coming soon.</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section section-2">
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
                <%--<h2 class="section-heading">Jurassic World </h2>--%>
                <%--<p class="additional-text">Fallen Kingdom</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt4881806"></div>
                    </div>
                </div>
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
                <%--<h2 class="section-heading">Damsel</h2>--%>
                <%--<p class="additional-text">Some cool info or hashtags #3</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt5881528"></div>
                    </div>
                </div>
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
                <%--<h2 class="section-heading">The Catcher Was a Spy</h2>--%>
                <%--<p class="additional-text">Some cool info or hashtags #4</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt4602066"></div>
                    </div>
                </div>

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
                <%--<h2 class="section-heading">Sicario</h2>--%>
                <%--<p class="additional-text">Day of the Soldado</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt5052474"></div>
                    </div>
                </div>

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
                <%--<h2 class="section-heading">The king</h2>--%>
                <%--<p class="additional-text">Some cool info or hashtags #6</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt6775942"></div>
                    </div>
                </div>
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
                <%--<h2 class="section-heading">Uncle Drew</h2>--%>
                <%--<p class="additional-text">Some cool info or hashtags #7</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt7334528"></div>
                    </div>
                </div>

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
                <%--<h2 class="section-heading"><a class="codepen-link" href="#"--%>
                                               <%--target="_blank">Leave no trace</a></h2>--%>
                <%--<p class="check-out additional-text">Check out my other <a href="#" target="_blank">pens</a></p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt3892172"></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <h2 class="scroll-down">Scroll Down</h2>
</div>


<!--loginBox-->
<%--<jsp:include page="../common/loginbox.jsp"></jsp:include>--%>
<script>document.getElementById('nav_pred').className = 'active'</script>
<script src="../../js/ajax.js"></script>
<script src="../../js/lib/jquery-2.1.4.min.js"></script>
<script src="../../js/film_pro/predict_pro.js"></script>
<%--<script src="../../js/search_pro.js"></script>--%>
<script src="../../js/film_pro/predict_ui.js"></script>
</body>
<!-- //Body -->
</html>