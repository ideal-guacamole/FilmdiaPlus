<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2017/5/9
  Time: 上午9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>Home · Filmdia</title>
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
    <link rel="stylesheet" href="css/lib/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="js/lib/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/lib/bootstrap.min.js"></script>
    <script src="js/ajax.js"></script>
    <script src="js/mylib.js"></script>
    <script src="js/lib/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 1000,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        });
    </script>
    <!--css and js for the pagination bar-->

    <!--<link rel="stylesheet" href="../css/pagi.css" type="text/css">-->
    <link rel="stylesheet" type="text/css" href="css/pagi3.css" media="screen"/>

    <link rel="stylesheet" href="css/user.css"/>
</head>
<!-- //Head -->
<!-- Body -->
<body>
<!-- Header -->
<div class="header w3layouts-1">
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
                        <h1><a class="navbar-brand" href="index.jsp"><img src="images/Filmdia.png"></a></h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">
                            <li><a class="active" href="index.jsp">HOME</a></li>
                            <li><a href="views/film/library.jsp">LIBRARY</a></li>
                            <li><a href="views/film/topfilms.jsp">CHARTS</a></li>
                        </ul>
                        <jsp:include page="views/common/searchbar.jsp"></jsp:include>
                        <span style="position: absolute; top: 35%; right: -10%"><a href="views/film_pro/index_pro.jsp">FilmdiaPro</a></span>

                        <ul class="user-manage">
                            <img id="userCenter" src="images/Center.png">
                            <div id="userUnderBox">
                                <div style="text-indent:0;text-align: center">Hello, <span>xxx</span>!</div>
                                <ul>
                                    <li><img src="images/userCenter.png"/><a href="views/film/userCenter.jsp">User
                                        Center</a></li>
                                    <li><img src="images/exit.png"/><a href="" onclick="signOut()">Sign Out</a>
                                    </li>
                                </ul>
                            </div>
                        </ul>
                    </div><!-- /navbar-collapse -->
                    <!-- search-scripts -->
                    <script src="js/classie.js"></script>
                    <script src="js/uisearch.js"></script>
                    <script>
                        new UISearch(document.getElementById('sb-search'));
                    </script>
                    <!-- //search-scripts -->
                </nav>
            </div>
        </div>
    </div>
    <!-- Slider -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">

                <li>
                    <div class="slider-img">
                        <img id="" src="images/Dangal.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>Dangal</h3>
                        <div class="underline"></div>
                        <p>You think our girls are any lesser than boys?</p>

                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/Call_Me_By_Your_Name.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>Call Me By Your Name</h3>
                        <div class="underline"></div>
                        <p>Is it better to speak or die?</p>

                    </div>
                </li>

                <li>
                    <div class="slider-img">
                        <img src="images/Coco.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>Coco</h3>
                        <div class="underline"></div>
                        <p>The celebration of a lifetime </p>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/Wolf_Warriors.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info">
                        <h3>Zhan Lang</h3>
                        <div class="underline"></div>
                        <p>A Chinese special force soldier with extraordinary marksmanship is confronted by a group of
                            deadly foreign mercenaries who are hired to assassinate him by a vicious drug lord.</p>

                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/Contratiempo.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>The Invisible Guest</h3>
                        <div class="underline"></div>
                        <p>Every story has two sides. The truth, only one.</p>

                    </div>
                </li>
            </ul>
            <script>
                var slider = document.getElementById('slider');
                var posterArr = slider.getElementsByTagName('li');

                posterArr[0].onclick = function () {
                    setUrl(900, 'tt5074352');
                };
                posterArr[1].onclick = function () {
                    setUrl(359, 'tt5726616')
                };
                posterArr[2].onclick = function () {
                    setUrl(100, 'tt2380307')
                };
                posterArr[3].onclick = function () {
                    setUrl(6564, 'tt3540136');
                };
                posterArr[4].onclick = function () {
                    setUrl(839, 'tt4857264')
                };

                function setUrl(filmID, imdbID) {
                    var url = 'views/film/details.jsp';
                    var ref = 'filmID';
                    var value = filmID;
                    url = setQueryString(url, ref, value);
                    ref = 'imdb_filmID';
                    value = imdbID;
                    url = setQueryString(url, ref, value);
                    location.href = url;
                }

            </script>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //Slider -->
</div>
<!-- //Header -->
<!-- agileinfo -->
<div class="agileinfo">
    <div class="cinema_container">
        <div class="div-spac"></div>
        <h3>CINEMA INFO</h3>
        <%--<p class="ttt">Movies playing and coming soon.</p>--%>
        <div class="latestinfo">
            <div class="title cf">
                <ul class="title-list fr cf ">
                    <li class="on">Opening This Week</li>
                    <li>Now Playing</li>
                    <li>Coming Soon</li>
                    <p></p>
                </ul>
            </div>
            <div class="product-wrap">
                <!--案例1-->
                <div class="product showing" id="thisweek">
                    <ul class="cf">
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="thisweek_film1_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film1_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="thisweek_film1_name" class="alt"></div>
                                <div id="thisweek_film1_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="thisweek_film2_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film2_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="thisweek_film2_name" class="alt"></div>
                                <div id="thisweek_film2_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="thisweek_film3_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film3_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="thisweek_film3_name" class="alt"></div>
                                <div id="thisweek_film3_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="thisweek_film4_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film4_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="thisweek_film4_name" class="alt"></div>
                                <div id="thisweek_film4_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="thisweek_film5_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film5_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="thisweek_film5_name" class="alt"></div>
                                <div id="thisweek_film5_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--案例2-->
                <div class="product" id="latest">
                    <ul class="cf">
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="latest_film1_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film1_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="latest_film1_name" class="alt"></div>
                                <div id="latest_film1_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="latest_film2_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film2_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="latest_film2_name" class="alt"></div>
                                <div id="latest_film2_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="latest_film3_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film3_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="latest_film3_name" class="alt"></div>
                                <div id="latest_film3_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="latest_film4_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film4_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="latest_film4_name" class="alt"></div>
                                <div id="latest_film4_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="latest_film5_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film5_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="latest_film5_name" class="alt"></div>
                                <div id="latest_film5_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--案例3-->
                <div class="product" id="coming">
                    <ul class="cf">
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="coming_film1_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film1_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="coming_film1_name" class="alt"></div>
                                <div id="coming_film1_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="coming_film2_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film2_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="coming_film2_name" class="alt"></div>
                                <div id="coming_film2_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="coming_film3_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film3_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="coming_film3_name" class="alt"></div>
                                <div id="coming_film3_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="coming_film4_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film4_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="coming_film4_name" class="alt"></div>
                                <div id="coming_film4_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="slow-zoom vertical text-center">
                                <a id="coming_film5_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film5_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">

                                    </div>
                                </a>
                            </div>
                            <div class="legend-grd">
                                <div id="coming_film5_name" class="alt"></div>
                                <div id="coming_film5_score" class="legend-movie nota"></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End of the cinemainfo -->

    </div>
</div>
<div class="reviewinfo">
    <div class="review_container">
        <div class="div-spac"></div>
        <h3>AUDIENCE REVIEWS</h3>
        <div id="review_box" class="box">
            <div class="column">
                <div class="item">
                    <div class="review-hd">
                        <a href="">
                            <img src="https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_UY268_CR3,0,182,268_AL_.jpg"
                                 alt="">
                        </a>
                    </div>
                    <div class="review-bd">
                        <h3>In one word: Spectacular.</h3>
                        <div class="review-meta">
                            <a href="#">ex_umbrellacorp</a> on
                            <a href="#">Coco</a>
                            <span>
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                            </span>

                            <span class="allstar40"></span>
                        </div>
                        <div class="review-content">A Pixar's masterpiece, impeccably done in terms of research (about
                            the Mexican culture), animation, script, musicalization, direction and production. A subtle
                            yet charming and inspiring story; with a quality of animation worthy of an Academy Award;
                            with an extremely
                            powerful soundtrack; an excellent script; likable, well-developed and relatable characters;
                            and extremely respectful of the cultural component in which the story is inspired. In short,
                            one of the best landings of Pixar - perhaps repeating a bit its known formula, hence you can
                            feel a "back to basics" in terms of the narrative, history and character development, but at
                            the same time managing to stand out as a fresh and purposeful product that will undoubtedly
                            give a lot to talk about.
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="review-hd">
                        <a href="">
                            <img src="https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                 alt="">
                        </a>
                    </div>
                    <div class="review-bd">
                        <h3>Blade Runner 2049 - A New-Age Sci-Fi Classic</h3>
                        <div class="review-meta">
                            <a href="#">KJ Proulx</a> on
                            <a href="#">Blade Runner 2049</a>
                            <span>
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                            </span>

                            <span class="allstar40"></span>
                        </div>
                        <div class="review-content">If not for anything else, Blade Runner 2049 benefits from some of
                            the best cinematography I've laid my eyes on in years. From the addition of the seamlessly
                            blended visual effects, to the mind- blowing scenery constructed by the entire art
                            department, I have nothing but praise for this film. Whether or not you find yourself
                            enjoying your experience, the visuals alone should have you applauding, due to their
                            incredibly detailed nature. I personally found the overall film to be magnificent, but when
                            certain scenes were dialogue-free and asking you to gasp at the imagery, that's exactly what
                            I was doing, as I feel many audiences members will.
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="item">
                    <div class="review-hd">
                        <a href="">
                            <img src="https://m.media-amazon.com/images/M/MV5BMjE4NzgzNzEwMl5BMl5BanBnXkFtZTgwMTMzMDE0NjE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                 alt="">
                        </a>
                    </div>
                    <div class="review-bd">
                        <h3>Infinitely deep, an experience I will not forget.</h3>
                        <div class="review-meta">
                            <a href="#">Dominic Michael Tierno</a> on
                            <a href="#">Room</a>
                            <span>
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                            </span>

                            <span class="allstar40"></span>
                        </div>
                        <div class="review-content">*Insert all 9 & 10 reviews here* I was in awe during the entire
                            film. Lenny Abrahamson & the writing team made sure there was not one dull moment. The
                            addition of "insignificant" characters and plot twists are later realized to be so
                            significant and influential in keeping the film alive throughout its duration. It was the
                            little things that made this story one of the best I've seen in a long time. I experienced
                            an entire palette of emotions all at once and was left in a deep level of curiosity and
                            reflection. Very few films have the power to continue to influence its audience after the
                            credits. Room is endless in the most beautiful way.
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="review-hd">
                        <a href="">
                            <img src="https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                 alt="">
                        </a>
                    </div>
                    <div class="review-bd">
                        <h3>A masterfully orchestrated film</h3>
                        <div class="review-meta">
                            <a href="#">alva3901</a> on
                            <a href="#">Logan</a>
                            <span>
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                                <img src="images/star-small.png" alt="">
                            </span>

                            <span class="allstar40"></span>
                        </div>
                        <div class="review-content">The final outing of Wolverine by Hugh Jackman is one unforgettable
                            ride and one of the best comic-book movies in recent memory. Directed by James Mangold-who
                            was also at the helm of "The Wolverine" (2013)- Logan creates a character-driven, violent
                            and emotional film, which benefits from its rated-r rating. The acting, action and story of
                            Logan are one-of-a-kinds in the superhero genre, as the cast, headed by Hugh Jackman,
                            Patrick Stewart and newly- introduced Dafne Keen, play their characters to the fullest. It
                            is unlike any other X-Men film, definitely the best in the series and deserves the praise
                            it's getting.

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var review_box = document.getElementById('review_box');
            var review_items = review_box.getElementsByClassName('item');
            review_items[0].onclick = function () {
                //coco
                setUrl(100, 'tt2380307');

            }
            review_items[1].onclick = function () {
                //blade runner
                setUrl(233, 'tt1856101');
            }
            review_items[2].onclick = function () {
                //room
                setUrl(472, 'tt3170832');
            }
            review_items[3].onclick = function () {
                setUrl(363, 'tt3315342');

                // setUrl(368, 'tt0816692'); //interstellar
            }
        </script>
    </div>
</div>
<div class="recommendinfo">
    <div id="recommend_container" class="recommend_container">
        <div class="div-spac"></div>
        <h3>RECOMMENDED FOR YOU</h3>
        <div class="recommend_row">
            <div class="recommend_col">
                <div class="grd long">
                    <img src="https://m.media-amazon.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
                         alt="">
                </div>
                <div class="legend-grd">
                    <div class="alt">GRAVITY</div>
                    <div>&nbsp;Don't Let Go</div>
                    <div class="legend-movie nota">8.9</div>
                </div>
            </div>
            <div class="recommend_col">
                <div class="grd long">
                    <img src="https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
                         alt="">
                </div>
                <div class="legend-grd">
                    <div class="alt">THE DARK KNIGHT</div>
                    <div>&nbsp;Welcome to a world without rules.</div>
                    <div class="legend-movie nota">8.9</div>
                </div>
            </div>
            <div class="recommend_col">
                <div class="grd long">
                    <img src="https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
                         alt="">
                </div>
                <div class="legend-grd">
                    <div class="alt">INCEPTION</div>
                    <div>&nbsp; Your mind is the scene of the crime</div>
                    <div class="legend-movie nota">8.9</div>
                </div>
            </div>
            <div class="recommend_col">
                <div class="grd long">
                    <img src="https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_SX675_AL_.jpg"
                         alt="">
                </div>
                <div class="legend-grd">
                    <div class="alt">INTERSTELLAR</div>
                    <div>&nbsp; Go further.</div>
                    <div class="legend-movie nota">8.9</div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var recommend_container = document.getElementById('recommend_container');
        var recommend_items = recommend_container.getElementsByClassName('long');
        recommend_items[0].onclick = function () {
            //gravity
            setUrl(1105, 'tt1454468');
        }
        recommend_items[1].onclick = function () {
            //the dark knight
            setUrl(370, 'tt0468569');
        }
        recommend_items[2].onclick = function () {
            //inception
            setUrl(399, 'tt1375666');
        }
        recommend_items[3].onclick = function () {
            //interstellar
            setUrl(368, 'tt0816692');
        }
    </script>
</div>
<jsp:include page="views/common/footer.jsp"></jsp:include>
<jsp:include page="views/common/loginbox.jsp"></jsp:include>

<script type="text/javascript" src="js/index.js"></script>


<!--End-slider-script-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
</script>
<script src="js/search.js"></script>
</body>
<!-- //Body -->
</html>
