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
    <script type="text/javascript"
            src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
    <script type="text/javascript"
            src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
    <script src="../../js/mylib.js"></script>

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
                    <jsp:include page="template/navbar.jsp"></jsp:include>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$988M </h2>
                </div>
                <%--<p class="additional-text">Fallen Kingdom</p>--%>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt4881806"></div>
                    </div>
                </div>

                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="https://m.media-amazon.com/images/M/MV5BNzIxMjYwNDEwN15BMl5BanBnXkFtZTgwMzk5MDI3NTM@._V1_.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">Jurassic World: Fallen Kingdom</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Action</span><span class="bli1r">Adventure</span><span
                                    class="bli1r">Sci-Fi</span>
                            </div>
                            <p style="text-align: left"> When the island's dormant volcano begins roaring to life, Owen
                                and Claire mount a campaign to rescue the remaining dinosaurs from this extinction-level
                                event. </p>
                        </div>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$56M </h2>
                </div>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt5881528"></div>
                    </div>
                </div>
                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="https://m.media-amazon.com/images/M/MV5BMjAxNjY2NjY2OV5BMl5BanBnXkFtZTgwMzM2NzY1NTM@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">Damsel</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Drama</span><span class="bli1r">Comedy</span><span
                                    class="bli1r">Western</span>
                            </div>
                            <p style="text-align: left">It's the Wild West, circa 1870. Samuel Alabaster, an affluent
                                pioneer, ventures across the American frontier to marry the love of his life, Penelope.
                                As his group traverses the west, the once-simple journey grows treacherous, blurring the
                                lines between hero, villain and damsel.</p>
                        </div>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$59M </h2>
                </div>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt4602066"></div>
                    </div>
                </div>
                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="https://m.media-amazon.com/images/M/MV5BODhlNDc0ZTQtN2FiOS00OGRiLWE2YmYtZmI2ZmU1NzM5MmJlXkEyXkFqcGdeQXVyODY3Nzc0OTk@._V1_SY1000_SX675_AL_.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">The Catcher Was a Spy</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Biography</span><span class="bli1r">Drama</span><span
                                    class="bli1r">War</span>
                            </div>
                            <p style="text-align: left"> A major league baseball player, Moe Berg, lives a double life
                                working for the Office of Strategic Services.</p>
                        </div>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$145M </h2>
                </div>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt5052474"></div>
                    </div>
                </div>
                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="https://m.media-amazon.com/images/M/MV5BMjgyOWRhMDctZTZlNC00M2I1LWI0NDQtYzlmODdmYjY2MThiXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SY1000_SX675_AL_.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">Sicario 2: Soldado</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Action</span><span class="bli1r">Crime</span><span
                                    class="bli1r">Thriller</span>
                            </div>
                            <p style="text-align: left"> The drug war on the US-Mexico border has escalated as the
                                cartels have begun trafficking terrorists across the US border. To fight the war,
                                federal agent Matt Graver re-teams with the mercurial Alejandro.</p>
                        </div>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$51M </h2>
                </div>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt6775942"></div>
                    </div>
                </div>
                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="http://wx2.sinaimg.cn/mw690/6ae72ecely1fsolq44zpqj20iq0rstm4.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">The King</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Documentary</span>
                            </div>
                            <p style="text-align: left">Forty years after the death of Elvis Presley, a musical road
                                trip across America in his 1963 Rolls Royce explores how a country boy lost his
                                authenticity and became a king while his country lost her democracy and became an
                                empire.</p>
                        </div>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$113M </h2>
                </div>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt7334528"></div>
                    </div>
                </div>
                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="http://wx1.sinaimg.cn/mw690/6ae72ecely1fsolll9w2ij20i00qpto2.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">Uncle Drew</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Comedy</span>
                            </div>
                            <p style="text-align: left"> After draining his life savings to enter a team in the Rucker
                                Classic street ball tournament in Harlem, Dax (Lil Rel Howery) is dealt a series of
                                unfortunate setbacks, including losing his ...</p>
                        </div>
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
                <div class="section-heading">

                    <h2>Predicted Gross In USA </h2>
                    <h2 class="value" style="color:orange; text-align:right;font-size:6rem;font-famliy:pfd-medium">$73M </h2>
                </div>
                <div class="chartWrapper">
                    <div class="chartTitle">
                        <h3>Youtube Trailer Click Times</h3>
                    </div>
                    <div class="pre_wrapper">
                        <div class="predictChartBox" name="tt3892172"></div>
                    </div>
                </div>
                <div class="film_Box" style="margin-top: 10%;">
                    <div style="margin-left: 600px">
                        <div class="col-md-4" style="width: 180px;height: 222px">
                            <div class=" slow-zoom vertical">
                                <a href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img src="https://m.media-amazon.com/images/M/MV5BMjE3OTI1MTU0OV5BMl5BanBnXkFtZTgwNTg1MzkzNTM@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
                                             alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="caption_overlay text-center">
                                            <div class="primary" style="font-size: 12px">
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="film_right">
                        <div class=""
                             style="font-size: 15px;margin:10px">

                            <a style="color: white; margin-left: 5px" href="">Leave no trace</a>
                        </div>

                        <div class=""
                             style=" max-width: 300px;font-size: 14px;margin: 30px 10px 10px 15px;color: darkgray">
                            <div style="margin-top:-1rem;margin-bottom: 1rem ">
                                <span class="bli1r">Drama</span>
                            </div>
                            <p style="text-align: left"> A father and his thirteen year-old daughter are living in an
                                ideal existence in a vast urban park in Portland, Oregon, when a small mistake derails
                                their lives forever.</p>
                        </div>

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