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
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all">
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
    <jsp:include page="views/common/headbar.jsp"></jsp:include>
    <!-- Slider -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">

                <li>
                    <div class="slider-img">
                        <img id="" src="../images/Dangal.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>Dangal</h3>
                        <div class="underline"></div>
                        <p>You think our girls are any lesser than boys?</p>

                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="../images/Call_Me_By_Your_Name.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>Call Me By Your Name</h3>
                        <div class="underline"></div>
                        <p>Is it better to speak or die?</p>

                    </div>
                </li>

                <li>
                    <div class="slider-img">
                        <img src="../images/Coco.jpg" class="img-responsive" alt="Manufactory">
                    </div>
                    <div class="slider-info w3ls-1">
                        <h3>Coco</h3>
                        <div class="underline"></div>
                        <p>The celebration of a lifetime </p>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="../images/Wolf_Warriors.jpg" class="img-responsive" alt="Manufactory">
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
                        <img src="../images/Contratiempo.jpg" class="img-responsive" alt="Manufactory">
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
                    var url = 'views/details.jsp';
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
    <div class="container">
        <h3 style="font-weight: bold; margin-top: 30px">Cinema Info</h3>
        <p class="ttt">Movies playing and coming soon.</p>
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
                <div class="product showing">
                    <ul class="cf">
                        <li class="ml0" id="thisweek">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="thisweek_film1_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film1_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="thisweek_film1_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="thisweek_film1_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="thisweek_film2_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film2_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="thisweek_film2_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="thisweek_film2_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="thisweek_film3_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film3_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="thisweek_film3_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="thisweek_film3_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="thisweek_film4_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film4_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="thisweek_film4_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="thisweek_film4_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="thisweek_film5_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="thisweek_film5_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="thisweek_film5_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="thisweek_film5_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--案例2-->
                <div class="product" id="latest">
                    <ul class="cf">
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="latest_film1_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film1_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="latest_film1_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="latest_film1_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="latest_film2_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film2_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="latest_film2_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="latest_film2_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="latest_film3_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film3_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="latest_film3_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="latest_film3_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="latest_film4_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film4_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="latest_film4_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="latest_film4_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="latest_film5_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="latest_film5_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="latest_film5_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="latest_film5_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--案例3-->
                <div class="product" id="coming">
                    <ul class="cf">
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="coming_film1_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film1_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="coming_film1_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="coming_film1_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="coming_film2_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film2_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="coming_film2_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="coming_film2_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="coming_film3_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film3_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="coming_film3_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="coming_film3_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="coming_film4_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film4_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="coming_film4_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="coming_film4_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="ml0">
                            <div class="content-grid-effect slow-zoom vertical text-center">
                                <a id="coming_film5_url" href="" class="b-link-stripe b-animate-go  swipebox">
                                    <div class="img-box">
                                        <img id="coming_film5_pic" src="" alt="image" class="img-responsive zoom-img">
                                    </div>
                                    <div class="info-box">
                                        <div class="info-content">
                                            <h4 id="coming_film5_name">Premier Realty</h4>
                                            <span class="separator"></span>
                                            <p id="coming_film5_summary">Ut enim ad minima veniam, quis nostrum
                                                exercitationem ullam corporis suscipit
                                                laboriosam</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End of the cinemainfo -->

        <h3 style="font-weight: bold" id="top">Top Films</h3>

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
        <%--<div style="width: 100%">--%>
        <%--<div class="content">--%>
        <%--<div class="demo">--%>
        <%--<div id="paginate_imdb"></div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<script type="text/javascript" src="js/lib/jquery.paginate.js"></script>--%>
        <%--<script type="text/javascript">--%>

        <%--</script>--%>
        <%--</div>--%>
        <div id="example" style="text-align: center">
            <ul id="pageLimit"></ul>
        </div>
        <script type="text/javascript" src="js/lib/bootstrap-paginator.js"></script>
        <script>
            // $('#pageLimit').bootstrapPaginator({
            //     currentPage: 1,//当前的请求页面。
            //     totalPages: 20,//一共多少页。
            //     size:"normal",//应该是页眉的大小。
            //     bootstrapMajorVersion: 3,//bootstrap的版本要求。
            //     alignment:"right",
            //     numberOfPages:5,//一页列出多少数据。
            //     itemTexts: function (type, page, current) {
            //         switch (type) {
            //             case "first": return "First";
            //             case "prev": return "Prev";
            //             case "next": return "Next";
            //             case "last": return "Last";
            //             case "page": return page;
            //         }
            //     },
            //     onPageClicked: function (event, originalEvent, type, page) {
            //         loadTable(page, IMDb_O);
            //     }
            // });
        </script>
        <!--End of the pagination bar-->

    </div>
</div>
<!-- agileinfo -->

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

    // js for the pagination
</script>

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
