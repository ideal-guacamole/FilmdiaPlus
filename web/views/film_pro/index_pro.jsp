<%--
  Created by IntelliJ IDEA.
  User: Observer
  Date: 2018/6/23
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>Predict · Filmdia</title>
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
    <link rel="stylesheet" href="../../css/user.css"/>
    <link rel="stylesheet" href="../../css/predict.css"/>
    <link rel="stylesheet" href="../../css/button.css" type="text/css" media="all">
    <script src="../../js/ajax.js"></script>
    <script src="../../js/lib/echarts.js"></script>
    <script src="../../js/infographic.js"></script>
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
<div class="header">
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
                        <h1><a class="navbar-brand" href="index_pro.jsp"><img src="../../images/logo2.png"></a></h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">
                            <li><a class="active" href="index_pro.jsp">Home</a></li>
                            <li><a href="library.jsp">Library</a></li>
                            <li><a href="statistic.jsp">Statistic</a></li>
                            <li><a href="predict.jsp">Predict</a></li>
                        </ul>

                        <jsp:include page="../common/searchbar.jsp"></jsp:include>
                        <span style="position: absolute; top: 35%; right: -10%"><a href="../../index.jsp">Filmdia</a></span>
                        <ul class="user-manage">
                            <img id="userCenter" src="../../images/Center.png">
                            <div id="userUnderBox">
                                <div style="text-indent:0;text-align: center">Hello, <span>xxx</span>!</div>
                                <ul>
                                    <li><img src="../../images/userCenter.png"/><a href="../film/userCenter.jsp">User
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
    <div class="banner">
        <div class="bann-info">
            <h3><em>Box Office</em>&nbsp;&nbsp;Prediction&nbsp;&nbsp;Algorithm</h3>
            <div class="intro">
                <p>To reasonably forecast the box office of the unpublished films,
                    we select 1997 movies from USA and Britain since 2009 as a sample
                    <%--(because few of the films from other countries are box-office success and--%>
                    <%--the film industry revenue of two countries hasn't changed much since 2009)--%>
                    to analysis the relationship between some of their attributes and their final box office.</p>

                <p>The attributes required are as follows:
                    <u>directors, stars, genres, awards and trailer hits on Youtube of the film</u>.</p>

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

                <p>The existing data will be divided into two parts for <span class="yellow">supervised learning</span>:
                    80% for training the model by pairing the input with expected output, and 20%
                    for testing the accuracy of the model and adjusting the parameters.
                    With this model, we are able to predict the box office of the movies opening this week
                    or coming soon.</p>
            </div>

        </div>
    </div>
    <!-- //Slider -->
</div>

<div class="infoPane">
    <!--/content-inner-section-->
    <div class="w3_content_agilleinfo_inner">
        <div class="agile_featured_movies">
            <!--/agileinfo_tabs-->
            <div class="agileinfo_tabs">

                <!-- <h3 class="agile_w3_title"> Latest <span>Movies</span></h3> -->
                <!--/movies-->
                <div class="w3_agile_latest_movies">

                    <div id="owl-demo" class="owl-carousel owl-theme">
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="thisweek1_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="thisweek1_name">Storks</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="thisweek2_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE"/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="thisweek2_name">Hopeless</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="thisweek3_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt=" IMAGE"/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="thisweek3_name">Mechanic</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="thisweek4_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt=" "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="thisweek4_name">Timeless</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="thisweek5_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt=" IMAGE"/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="thisweek5_name">Deadpool</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="coming1_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="coming1_name">Warcraft</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="coming2_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="coming2_name">Rambo 4</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="coming3_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="coming3_name">Rambo 4</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="coming4_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="coming4_name">Rambo 4</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                                <img id="coming5_pic" src="../../images/posters/B005GSVFDW.jpg" class="img-responsive"
                                     alt="IMAGE "/>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6 id="coming5_name">Rambo 4</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//movies-->
            </div>
        </div>
    </div>
    <!--//content-inner-section-->

    <div class="movie_info">
        <div class="info_container">
            <%--<div class="movie_poster"><img src="../images/posters/B005LAIIS0.jpg" alt=""></div>--%>

            <div class="staff_info">
                <div class="director_title"><h4>Director & Representatives Box Office:</h4></div>
                <div class="director_info" id="director_info">

                </div>

                <div class="star_title"><h4>Stars & Representatives Box Office:</h4></div>
                <div class="star_info" id="star_info">
                    <%--<div class="director_info">--%>
                    <%--<div class="directorBox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>Morgan Freeman</h6>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="director_info">--%>
                    <%--<div class="directorBox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>Morgan Freeman</h6>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="director_info">--%>
                    <%--<div class="directorBox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>Morgan Freeman</h6>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="infobox">--%>
                    <%--<div class="filmbox">--%>
                    <%--<img src="../images/posters/B005LAIHPE.jpg" alt="">--%>
                    <%--<h6>$20122016</h6>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </div>


                <div id="predictChartBox">
                </div>

            </div>
            <div class="algorithm">
                <div class="btn_group">
                    <button class="btn btn-primary btn-sm btn-round" id="linear">Linear</button>
                    <button class="btn btn-primary btn-sm btn-round" id="lasso">Lasso</button>
                    <button class="btn btn-primary btn-sm btn-round" id="k_nearest">K-Nearest</button>
                    <button class="btn btn-primary btn-sm btn-round" id="poly">Polynomial</button>
                </div>
                <div class="result">
                    <div class="range">
                        <h4>Possible range:</h4>
                        <h2><span id="min">$</span>~<span id="max">$</span></h2>
                    </div>
                    <div class="final">
                        <h4>Possible result:</h4>
                        <h2 id="precise">$</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--//infoPane--%>

<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script src="../../js/lib/jquery-1.11.1.min.js"></script>
<link href="../../css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="../../js/lib/owl.carousel.js"></script>
<script src="../../js/predict.js"></script>
<script src="../../js/search_pro.js"></script>

</body>
<!-- //Body -->
</html>
