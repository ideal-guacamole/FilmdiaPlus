<%@ page import="entityVO.UserAccount" %>
<%
    UserAccount userAccount = (UserAccount) session.getAttribute("userAccount");
    if (userAccount == null) {
        UserAccount initAccount = new UserAccount();
        initAccount.setUserID(0);
        initAccount.setUserName("");
        initAccount.setPassword("");
        userAccount = initAccount;
    }
%>

<%--
  Created by IntelliJ IDEA.
  User: Ferriswheel
  Date: 2017/5/17
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>Details · Filmdia</title>
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
    <link rel="stylesheet" href="../../js/lib/layui/css/layui.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/lib/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/style.css" type="text/css" media="all">
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../js/lib/layui/layui.all.js"></script>

    <!-- Own css and js-->
    <link rel="stylesheet" href="../../css/details.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/Detail_Tab.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/user.css"/>
    <link rel="stylesheet" href="../../css/spinner.css"/>
    <script src="../../js/mylib.js"></script>
    <script type="text/javascript" src="../../js/Detail_Tab.js"></script>
    <script src="../../js/lib/echarts.js"></script>
    <script src="../../js/world.js"></script>
    <script>
        var username = '<%=userAccount.getUserName()%>';
        var userid = <%=userAccount.getUserID()%>;
    </script>
    <!-- Button css -->
    <link rel="stylesheet" href="../../css/button.css" type="text/css" media="all">
</head>
<!-- //Head -->
<!-- Body -->
<body style="">
<!-- Header -->
<div class="header">
    <jsp:include page="template/navbar.jsp"></jsp:include>
</div>

<!-- //Header -->
<div class="banner" id="movie-background"
     style="">
    <div class="title-info">
        <div class="film_poster"><a href=""><img id="poster" class="poster-image" src=""></a></div>
        <div class="fast_info">
            <h2 id="title" class="film_title"><span class="Year">Title</span></h2>

            <span id="summary" class="film_summary"></span>
            <br>
            <span class="Directors"><label>Directors:&nbsp</label><span id="directors"></span></span>
            <span class="Stars"><label>Stars:&nbsp</label><span id="actors"></span></span>
            <span class="Tags"><label>Genre:&nbsp</label><span id="tags"></span></span>
        </div>
        <div class="add_fav">
            <div class="fav_content">
                <label class="rating_label" style="color: #fff">IMDb Rating:
                    <label class="Score"><span id="score"></span><span style="color: #fff; font-size: 17px">/10
                </span></label>
                    <label class="rating_label" style="color: #fff">Your Rating:
                    </label>
                    <br/>
                    <div id="userScore" style="height: 50px; left: 11%; padding-top: 15px; position: relative">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                        <img style="width: 15px" src="../../images/star-small-dark.png" alt="">
                    </div>
                    <%--<div style="text-align: center;font-size: 20px;line-height: 50px;color: #8c94ff;font-weight: bold"><em--%>
                    <%--id="userScore">No Rating yet</em></div>--%>
                    <!-- <div id="demo6" class="demo"></div>
                    <script type="text/javascript">
                        $('#demo6').rater('../js/ratingsdemo.php', {maxvalue:10, style: 'basic', curvalue:0});
                    </script> -->
                    <button class="add_button btn btn-primary btn-sm btn-round" id="add_fav">Add to Favorite</button>
                    <script>
                        document.getElementById('add_fav').onclick = function () {
                            var accountID = <%=userAccount.getUserID()%>;
                            addFav(accountID);
                        }
                    </script>
            </div>

        </div>
    </div>
</div>

<div class="tab_group" style="background: transparent;">
    <%--<div class="title cf" style="background: rgba(0,0,0,.1);">--%>
    <%--<ul class="title-list fr cf ">--%>
    <%--<li class="on">Technical Specs</li>--%>
    <%--<li>Reviews</li>--%>
    <%--<p></p>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <div class="product-wrap" style="background: rgba(255,255,255,1);">
        <!--Specific-->
        <div id="spec" class="product showing">
            <%--<h1 class="heads-for-detail">ABOUT MOVIE</h1>--%>
            <!-- base Info -->
            <div class="info_line1">
                <span class="country_label">Country: </span><label id="country" class="Country"></label>
                <span class="language_label">Gross(USA): </span><label id="language" class="Language"></label>
                <span class="runtime_label">Runtime: </span><label id="runtime" class="Runtime"></label>
            </div>
            <!-- base Info -->
            <!-- Cast -->
            <div id="castBox" class="Cast left">
                <h3 class="detail-little-titles">Cast</h3>
                <table class="table table-striped" id="castTable">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Name</th>
                        <th></th>
                        <th>Role</th>
                    </tr>
                    </thead>
                    <tbody id="casttbody">
                    </tbody>
                </table>
            </div>
            <!-- Cast end-->

            <!-- Storyline -->
            <div class="Storyline left">
                <h3 class="detail-little-titles">Storyline</h3>
                <div class="storyline_form">
                    <div class="storyline_part">
                        <p id="storyline">A naval war ship encounters an alien armada and faces the biggest
                            threat mankind has
                            ever faced. If they lose, the world could face a major extinction event and an alien
                            invasion. Will humans win this alien war, what are the aliens doing here, and what
                            do they want? Based on the Hasbro naval war game. </p>
                    </div>
                    <div class="tagline_part">
                        <label for="storyLine_tagLine">Tagline: </label>
                        <span id="storyLine_tagLine" class="Tagline">The battle for Earth begins at sea.</span>
                    </div>
                    <div class="keyword_part">
                        <label for="storyLine_keywords">Plot Keywords: </label>
                        <span id="storyLine_keywords"
                              class="ScripteKeywords">oahuhawaii | hawaii | alien | naval | ship </span>
                    </div>
                </div>
            </div>
            <%--Storyline end--%>

            <div class="right">
                <!-- Details -->
                <div class="Details">
                    <h3 class="detail-little-titles">Details</h3>
                    <div class="detail_form">
                        <span>Language: <label id="detail_language" class="Language"></label></span>
                        <span>Release Date:
                                <label id="detail_onTime" class="OnTime"></label></span>
                        <span>Trailer Online: <label id="detail_watchUrl" class="OnTime"><a
                                href=""></a></label></span>
                    </div>
                </div>
                <!-- Details end-->

                <%--Core Members--%>
                <div class="CoreMembers">
                    <h3 class="detail-little-titles">Core Members</h3>
                    <div class="detail_form">
                        <div class="coresgroup">
                            <div class="cores">
                                <img id="director_pic" src="../../images/posters/B005CA4SJW.jpg"
                                     style="width:70px; height: 105px;">
                                <div id="director_name" class="name">John Williams(Dir)</div>
                            </div>
                            <div class="cores">
                                <img id="star1_pic" src="../../images/posters/B005CA4SJW.jpg"
                                     style="width:70px; height: 105px;">
                                <div id="star1_name" class="name">John Williams</div>
                            </div>
                            <div class="cores">
                                <img id="star2_pic" src="../../images/posters/B005CA4SJW.jpg"
                                     style="width:70px; height: 105px;">
                                <div id="star2_name" class="name">John William</div>
                            </div>
                            <div class="cores">
                                <img id="star3_pic" src="../../images/posters/B005CA4SJW.jpg"
                                     style="width:70px; height: 105px;">
                                <div id="star3_name" class="name">John Williams</div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--Core Members end--%>

                <%--Box office--%>
                <div class="BoxOffice">
                    <h3 class="detail-little-titles">Box Office</h3>
                    <div class="detail_form">
                        <span>Worldwide Gross: <label id="box_worldGross"></label></span>
                        <span>Gross(USA): <label id="box_gross"></label></span>
                        <span>Budget: <label id="box_budget"></label></span>
                    </div>
                </div>
                <%--Box office end--%>
            </div>


            <div style="font: 0px/0px sans-serif;clear: both;display: block"></div>
        </div>

        <!--Graphs-->
        <div id="graphForStatistics" class="product">
            <h1 class="heads-for-detail">STATISTICS</h1>
            <%--<div id="radarBox" class="half_graphs" style="">--%>
            <%--</div>--%>

            <h2 class="detail-little-titles" style="color: #428bca;">Review Statistics</h2>
            <div id="mapBox" class=""
                 style="float: left;width: 50%;height:60vh;min-height:400px;max-height: 800px">
            </div>
            <%--<div style="float: left;width: 45%;height: 60vh;min-height:200px;max-height: 800px">--%>
            <div id="reviewFluctuationBox" class=""
                 style="float:left;width: 50%;height: 60vh;min-height:200px;max-height: 800px">
            </div>
            <%--<div id="descriptionLengthBox" class="" style="height: 30vh;min-height:200px;max-height: 400px">--%>
            <%--</div>--%>
            <%--</div>--%>
            <h2 class="detail-little-titles" style="color: #428bca;margin-top: 5%">Score Statistics</h2>
            <div id="scoreNumBox" class="half_graphs detail-little-titles" style=" margin-bottom: 8%!important;">
            </div>
            <div id="scoreFluctuationBox" class="half_graphs" style="margin-bottom: 8%!important;">
            </div>
            <h2 class="detail-little-titles" style="color: #428bca;">General Statistics</h2>
            <div id="commentWordsBox" class="half_graphs">
            </div>
            <%--<button--%>
            <%--style="margin-bottom:20px;margin-left:470px;width: 80px;text-align: center;height: 30px;display: inline-block"--%>
            <%--value="Day" onclick="javascript:makeReviewFluctuationByDay()">Day--%>
            <%--</button>--%>
            <%--<button style="margin-bottom:20px;margin-left:5px;width: 80px;text-align: center;height: 30px;display: inline-block"--%>
            <%--value="Month" onclick="javascript:makeReviewFluctuationByMonth()">Month--%>
            <%--</button>--%>
            <%--<button style="margin-bottom:20px;margin-left:5px;width: 80px;text-align: center;height: 30px;display: inline-block"--%>
            <%--value="Quarter" onclick="javascript:makeReviewFluctuationByQuarter()">Quarter--%>
            <%--</button>--%>
            <div style="font: 0px/0px sans-serif;clear: both;display: block"></div>
        </div>

        <%--Script for Graphs--%>

        <script src="../../js/details/details_pro.js"></script>
        <script>
            //加载统计图
            var imdb_filmID = getQueryString('imdb_filmID');
            var graph = document.getElementById('graphForStatistics');

            if (!graph.isEnter) {
                graph.isEnter = true;
//                makeRadar();
                makeReviewMap();
                makeScoreNum();
                makeScoreFluctuation();
                makeReviewFluctuationByDay();
                makeCommentWords();
            }
            ;
            var loadingReadyArr = [false, false, false, false, false, false];
            graph.onscroll = function () {
                var oScroll = graph.scrollTop;
                if (!loadingReadyArr[1] && oScroll > 400) {
                    loadingReadyArr[1] = true;
                    makeScoreNum();

                }
                if (!loadingReadyArr[2] && oScroll > 650) {
                    loadingReadyArr[2] = true;
                    makeScoreFluctuation();

                }
                if (!loadingReadyArr[3] && oScroll > 1100) {
                    loadingReadyArr[3] = true;
                    makeReviewFluctuationByDay();

                }
                if (!loadingReadyArr[4] && oScroll > 1550) {
                    loadingReadyArr[4] = true;
                    makeCommentWords();

                }
//                if (!loadingReadyArr[5] && oScroll > 1900) {
//                    loadingReadyArr[5] = true;
//                    makeDescriptionLength();
//                }
            };


            //电影雷达图
            function makeRadar() {
                var radarBox = document.getElementById('radarBox');
                var film = getFilm();
                if (film == null) {

                    return;
                }
                var reviewNum = 0;
                $.ajax({
                    type: 'post',
                    url: '/review/getReviewNumber.action',
                    contentType: 'application/json;charset=utf-8',
                    data: imdb_filmID,
                    success: function (data) {
                        reviewNum = data;
                        var radarData = [];
                        for (var i = 0; i < film.tags.length; i++) {
                            $.ajax({
                                type: 'post',
                                url: '/filmChart/getRadarChartInfo.action',
                                data: {tag: film.tags[i], year: film.onTime.substr(0, 4)},
                                success: function (data) {
                                    radarData.push(data);
                                    if (radarData.length === film.tags.length) {
                                        var radarChart = echarts.init(radarBox);
                                        var str = 'Average in ' + film.tags[0];
                                        var option = {
                                            title: {
                                                text: 'General Figure'
                                            },
                                            color: ["#0092C7", '#F29C9C'],
                                            tooltip: {},
                                            legend: {
                                                selectedMode: 'single',
                                                selected: {
                                                    'This Film': true,
                                                    str: true
                                                },
                                                data: [],
                                                left: 'left',
                                                top: 'center',
                                                orient: 'vertical'
                                            },
                                            scale: 'true',
                                            radar: {},
                                            series: []
                                        };
                                        var maxGross = 0;
                                        var maxBudget = 0;
                                        var maxReviewNumber = 0;
                                        var maxRatingNum = 0;
                                        for (var i = 0; i < radarData.length; i++) {
                                            if (maxGross < radarData[i].gross) {
                                                maxGross = radarData[i].gross;
                                            }
                                            if (maxGross < film.gross) {
                                                maxGross = film.gross;
                                            }
                                            if (maxBudget < radarData[i].budget) {
                                                maxBudget = radarData[i].budget;
                                            }
                                            if (maxBudget < film.budget) {
                                                maxBudget = film.budget;
                                            }
                                            if (maxReviewNumber < radarData[i].reviewNumber) {
                                                maxReviewNumber = radarData[i].reviewNumber;
                                            }
                                            if (maxReviewNumber < reviewNum) {
                                                maxReviewNumber = reviewNum;
                                            }
                                            if (maxRatingNum < radarData[i].ratingNum) {
                                                maxRatingNum = radarData[i].ratingNum;
                                            }
                                            if (maxRatingNum < film.ratingNum) {
                                                maxRatingNum = film.ratingNum;
                                            }
                                            option.legend.data.push(
                                                'Average in ' + film.tags[i]
                                            );
                                            option.series.push({
                                                name: 'Average in ' + film.tags[i],
                                                type: 'radar',
                                                symbolSize: '8',
                                                areaStyle: {
                                                    normal: {
                                                        shadowBlur: 13,
                                                        shadowColor: 'rgba(0,0,0,.2)',
                                                    }
                                                },
                                                data: [
                                                    {
                                                        value: [film.score, film.gross, film.budget, reviewNum, film.runtime, film.ratingNum],
                                                        name: 'This Film'
                                                    },
                                                    {
                                                        value: [radarData[i].score, radarData[i].gross, radarData[i].budget, radarData[i].reviewNumber, radarData[i].runtime, radarData[i].ratingNum],
                                                        name: 'Average in ' + film.tags[i]
                                                    }
                                                ]
                                            })
                                        }
                                        option.radar = {
                                            axisLine: {
                                                lineStyle: {
                                                    color: '#8aa',
                                                    opacity: 1.0
                                                }
                                            },
                                            splitLine: {
                                                lineStyle: {
                                                    color: '#8aa',
                                                    opacity: .8
                                                }
                                            },
                                            splitArea: {
                                                areaStyle: {
                                                    color: '#eee',
                                                    opacity: 0.6,
                                                    shadowBlur: 45,
                                                    shadowColor: 'rgba(0,0,0,.5)',
                                                    shadowOffsetX: 0,
                                                    shadowOffsetY: 15,
                                                }
                                            },
//                                            itemStyle: {
//                                                normal: {
//                                                    areaStyle: {
//                                                        color: '#8aa',
//                                                        opacity: 1.,
//                                                        shadowBlur: 45,
//                                                        shadowColor: 'rgba(0,0,0,.5)',
//                                                    }
//                                                }
//                                            },
                                            indicator: [
                                                {name: 'Score', max: 10},
                                                {name: 'Gross', max: Math.round(maxGross * (Math.random() + 1))},
                                                {name: 'Budget', max: Math.round(maxBudget * (Math.random() + 1))},
                                                {
                                                    name: 'Review Number',
                                                    max: Math.round(maxReviewNumber * (Math.random() + 1))
                                                },
                                                {name: 'Runtime', max: 180},
                                                {
                                                    name: 'Rating Number',
                                                    max: Math.round(maxRatingNum * (Math.random() + 1))
                                                }
                                            ]
                                        };
                                        radarChart.setOption(option);
//                                        radarBox.style.marginLeft = 200 + 'px';
                                    }

                                }
                            });
                        }

                    }
                });

            }

            //评论分布地图
            function makeReviewMap() {
                var mapBox = document.getElementById('mapBox');
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getReviewCountryDistribute.action',
                    contentType: 'application/json;charset=utf-8',
                    data: imdb_filmID,
                    success: function (data) {
                        var seriesData = [];
                        for (var key in data) {
                            seriesData.push({name: data[key].country, value: data[key].number});
                        }
                        var mapChart = echarts.init(mapBox);
                        var option = {
                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
                            title: {
                                text: 'Review Number Worldwide Distribution',
                                left: 'left',
                                top: 'top'
                            },
                            tooltip: {
                                trigger: 'item',
                                formatter: function (params) {
                                    return params.seriesName + '<br/>' + params.name + ' : ' + params.value;
                                }
                            },
                            visualMap: {
                                min: 0,
                                max: 20,
                                bottom: 40,
                                text: ['High', 'Low'],
                                realtime: false,
//                                show:false,
                                calculable: true,
                                inRange: {
                                    color: ['#e0ffff', '#006edd']
                                }
                            },
                            series: [
                                {
                                    name: 'Review Number Worldwide Distribution',
                                    type: 'map',
                                    mapType: 'world',
                                    roam: false,
                                    itemStyle: {
                                        emphasis: {label: {show: false}}
                                    },
                                    data: seriesData
                                }
                            ]
                        };
                        mapChart.setOption(option);
//                        mapBox.style.marginLeft = 200 + 'px';

                    }
                });
            }

            //评分分布
            function makeScoreNum() {
                var scoreNumBox = document.getElementById('scoreNumBox');
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getScoreNum.action',
                    contentType: 'application/json;charset=utf-8',
                    data: imdb_filmID,
                    success: function (data) {
                        var seriesData = [];
                        for (var key in data) {
                            seriesData.push(data[key]);
                        }
                        var scoreNumChart = echarts.init(scoreNumBox);
                        var option = {
                            title: {
                                text: 'Score Distribution'
                            },
//                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
                            tooltip: {},
//                            legend: {
//                                data: ['Num']
//                            },
                            xAxis: {
                                type: 'category',
                                name: 'Interval',
                                data: ["0.0~0.9", "1.0~1.9", "2.0~2.9", "3.0~3.9",
                                    "4.0~4.9", "5.0~5.9", "6.0~6.9", "7.0~7.9", "8.0~8.9", "9.0~10.0"]
                            },
                            yAxis: {
                                type: 'value',
                                name: 'Num'
                            },
                            visualMap: {
                                top: 0,
                                right: 10,
//                                bottom: 'bottom',
//                                center:'center',
                                pieces: [{
                                    gt: 0,
                                    lte: 5,
                                    color: "#0092C7",
                                }, {
                                    gt: 5,
                                    lte: 100,
                                    color: '#F29C9C',
                                },],
                                outOfRange: {
                                    color: '#F3E59B'
                                }
                            },
                            series: [{
                                name: 'Num',
                                type: 'bar',
                                data: seriesData
                            }]
                        };
                        scoreNumChart.setOption(option);
//                        scoreNumBox.style.marginLeft = 200 + 'px';

                    }
                });
            }

            //分数增长
            function makeScoreFluctuation() {
                var scoreFluctuationBox = document.getElementById('scoreFluctuationBox');
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getScoreFluctuation.action',
                    contentType: 'application/json;charset=utf-8',
                    data: imdb_filmID,
                    success: function (data) {
                        var xAxisData = [];
                        var seriesData = [];
                        for (var key in data) {
                            xAxisData.push(key);
                            seriesData.push(data[key]);
                        }
                        var scoreFluctuationChart = echarts.init(scoreFluctuationBox);
                        var option = {
                            title: {
                                text: 'Score Fluctuation'
                            },
                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
                            tooltip: {
                                trigger: 'axis',
                                formatter: "Date: {b}<br/> Score: {c}"
                            },
                            legend: {
                                data: ['Score']
                            },
                            dataZoom: {
                                type: 'slider',
                                xAxisIndex: 0
                            },
                            xAxis: {
                                type: 'category',
                                name: 'Date',
                                axisTick: {
                                    alignWithLabel: true
                                },
                                data: xAxisData
                            },
                            yAxis: {
                                type: 'value',
                                name: 'Score',
                                scale: true
                            },
                            series: [{
                                name: "Score",
//                                smooth: true,
                                areaStyle: {
                                    normal: {
                                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                            offset: 0,
                                            color: 'rgba(0,146,199,0.8)'
                                        }, {
                                            offset: 1,
                                            color: 'rgba(0,146,199,0.3)'
                                        }], false),
                                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                                        shadowBlur: 10
                                    }
                                },
                                type: 'line',
                                symbolSize: 6,
                                data: seriesData
                            }]
                        };
                        scoreFluctuationChart.setOption(option);
//                        scoreFluctuationBox.style.marginLeft = 200 + 'px';

                    }
                });
            }

            //评论数增长
            function makeReviewFluctuationByDay() {
                var reviewFluctuationBox = document.getElementById('reviewFluctuationBox');
                var dayData = [];
                var seriesDayData = [];
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getReviewNum.action',
                    data: {
                        imdb_filmID: imdb_filmID,
                        type: 'Day'
                    },
                    success: function (data) {
                        for (var key in data) {
                            dayData.push(key);
                            seriesDayData.push(data[key]);
                        }
                        var reviewFluctuationChart = echarts.init(reviewFluctuationBox);
                        var option = {
                            title: {
                                text: 'Review Fluctuation'
                            },
                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
                            tooltip: [{
                                trigger: 'axis',
                                formatter: "Day: {b}<br/> ReviewNum: {c}"
                            }],
                            legend: {
                                data: ['ReviewNumByDay']
                            },
                            dataZoom: {
                                type: 'slider',
                                xAxisIndex: 0
                            },
                            xAxis: [{
                                type: 'category',
                                name: 'Day',
                                data: dayData,
                                axisTick: {
                                    alignWithLabel: true
                                }
                            }],
                            yAxis: [{
                                type: 'value',
                                name: 'ReviewNum'
                            }],
                            series: [{
                                name: "ReviewNumByDay",
//                                smooth: true,
                                type: 'line',
                                areaStyle: {
                                    normal: {
                                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                            offset: 0,
                                            color: 'rgba(0,146,199,0.8)'
                                        }, {
                                            offset: 1,
                                            color: 'rgba(0,146,199,0.3)'
                                        }], false),
                                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                                        shadowBlur: 10
                                    }
                                },
                                symbolSize: 6,
                                data: seriesDayData
                            }]
                        };
                        reviewFluctuationChart.setOption(option);
//                        reviewFluctuationBox.style.marginLeft = 200 + 'px';
                    }
                });
            }

            function makeReviewFluctuationByMonth() {
                var reviewFluctuationBox = document.getElementById('reviewFluctuationBox');
                var monthData = [];
                var seriesMonthData = [];
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getReviewNum.action',
                    data: {
                        imdb_filmID: imdb_filmID,
                        type: 'Month'
                    },
                    success: function (data) {
                        for (var key in data) {
                            monthData.push(key);
                            seriesMonthData.push(data[key]);
                        }
                        var reviewFluctuationChart = echarts.init(reviewFluctuationBox);
                        var option = {
                            title: {
                                text: 'Review Fluctuation'
                            },
                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
                            tooltip: [{
                                trigger: 'axis',
                                formatter: "Month: {b}<br/> ReviewNum: {c}"
                            }],
                            legend: {
                                data: ['ReviewNumByMonth']
                            },
                            dataZoom: {
                                type: 'slider',
                                xAxisIndex: 0
                            },
                            xAxis: [{
                                type: 'category',
                                name: 'Month',
                                data: monthData,
                                axisTick: {
                                    alignWithLabel: true
                                }
                            }],
                            yAxis: [{
                                type: 'value',
                                name: 'ReviewNum'
                            }],
                            series: [{
                                name: "ReviewNumByMonth",
//                                smooth: true,
                                type: 'line',
                                symbolSize: 6,
                                data: seriesMonthData
                            }]
                        };
                        reviewFluctuationChart.setOption(option);
                    }
                });
            }

            function makeReviewFluctuationByQuarter() {
                var reviewFluctuationBox = document.getElementById('reviewFluctuationBox');
                var quarterData = [];
                var seriesQuarterData = [];
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getReviewNum.action',
                    data: {
                        imdb_filmID: imdb_filmID,
                        type: 'Quarter'
                    },
                    success: function (data) {
                        for (var key in data) {
                            quarterData.push(key);
                            seriesQuarterData.push(data[key]);
                        }
                        var reviewFluctuationChart = echarts.init(reviewFluctuationBox);
                        var option = {
                            title: {
                                text: 'Review Fluctuation'
                            },
                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
                            tooltip: [{
                                trigger: 'axis',
                                formatter: "Quarter: {b}<br/> ReviewNum: {c}"
                            }],
                            legend: {
                                data: ['ReviewNumByQuarter']
                            },
                            dataZoom: {
                                type: 'slider',
                                xAxisIndex: 0
                            },
                            xAxis: [{
                                type: 'category',
                                name: 'Quarter',
                                data: quarterData,
                                axisTick: {
                                    alignWithLabel: true
                                }
                            }],
                            yAxis: [{
                                type: 'value',
                                name: 'ReviewNum'
                            }],
                            series: [{
                                name: "ReviewNumByQuarter",
//                                smooth: true,
                                type: 'line',
                                symbolSize: 6,
                                data: seriesQuarterData
                            }]
                        };
                        reviewFluctuationChart.setOption(option);
                    }
                });
            }

            //关键字分布
            function makeCommentWords() {
                var commentWordsBox = document.getElementById('commentWordsBox');
                var valueData = [];
                var nameData = [];
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getCommentWords.action',
                    data: {
                        imdb_filmID: imdb_filmID,
                        n: 5 + ''
                    },
                    success: function (data) {
                        var seriesData = [];
                        for (var key in data) {
                            nameData.push(key);
                            valueData.push(data[key]);
                            seriesData.push({value: data[key], name: key});
                        }
                        var commentWordsChart = echarts.init(commentWordsBox);
                        var option = {
                            title: {
                                text: 'Comment Words Top 5'
                            },
                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3B59B', '#F29C9C'],
                            tooltip: {
                                trigger: 'item',
                                formatter: "{a} <br/>{b}: {c} ({d}%)"
                            },
                            legend: {
                                orient: 'vertical',
                                left: 'left',
                                top: 'center',
                                data: nameData
                            },
                            series: [
                                {
                                    name: 'Word',
                                    type: 'pie',
                                    radius: ['50%', '70%'],
                                    avoidLabelOverlap: false,
                                    label: {
                                        normal: {
                                            show: false,
                                            position: 'center'
                                        },
                                        emphasis: {
                                            show: true,
                                            textStyle: {
                                                fontSize: '30',
                                            }
                                        }
                                    },
                                    labelLine: {
                                        normal: {
                                            show: false
                                        }
                                    },
                                    data: seriesData
                                }
                            ]
                        };
                        commentWordsChart.setOption(option);
//                        commentWordsBox.style.marginLeft = 200 + 'px';

                    }
                });
            }

            //描述长度分布
            //            function makeDescriptionLength() {
            //                var descriptionLengthBox = document.getElementById('descriptionLengthBox');
            //                var valueData = [];
            //                var nameData =
            //                    ['0-19 words', '20-39 words', '40-59 words', '60-79 words', '80-99 words', '100-119 words', '120-139 words', '140-159 words', '160-179 words', '180-199 words', '200 words above', '10-49 words',];
            //                $.ajax({
            //                    type: 'post',
            //                    url: '/filmChart/getDescriptionNum.action',
            //                    data: {
            //                        imdb_filmID: imdb_filmID,
            //                        number: 20 + ''
            //                    },
            //                    success: function (data) {
            //                        var seriesData = [];
            //                        for (var key in data) {
            //                            valueData.push(data[key]);
            //                            seriesData.push({value: data[key], name: nameData[key]});
            //                        }
            //                        var descriptionLengthChart = echarts.init(descriptionLengthBox);
            //                        var option = {
            //                            title: {
            //                                text: 'Description Length Distribution'
            //                            },
            //                            color: ["#0092C7", '#9FE0F6', '#F3E59A', '#F3E59B', '#F29C9C'],
            //                            tooltip: {
            //                                trigger: 'item',
            //                                formatter: "{a} <br/>{b}: {c} ({d}%)"
            //                            },
            //                            legend: {
            //                                left: 'left',
            //                                top: 'center',
            //                                orient: 'vertical',
            //                                data: nameData
            //                            },
            //                            series: [
            //                                {
            //                                    name: 'Description Length',
            //                                    type: 'pie',
            //                                    radius: ['50%', '70%'],
            //                                    avoidLabelOverlap: false,
            //                                    label: {
            //                                        normal: {
            //                                            show: false,
            //                                            position: 'center'
            //                                        },
            //                                        emphasis: {
            //                                            show: true,
            //                                            textStyle: {
            //                                                fontSize: '24',
            //                                            }
            //                                        }
            //                                    },
            //                                    labelLine: {
            //                                        normal: {
            //                                            show: false
            //                                        }
            //                                    },
            //                                    data: seriesData
            //                                }
            //                            ]
            //                        };
            //                        descriptionLengthChart.setOption(option);
            ////                        descriptionLengthBox.style.marginLeft = 200 + 'px';
            //                    }
            //                });
            //            }

        </script>
        <%--<div style="font: 0px/0px sans-serif;clear: both;display: block"></div>--%>
    </div>
</div>


<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>

<script src="../../js/details/searchdetail_pro.js"></script>
<!-- footer -->
<%--<jsp:include page="common/footer.jsp"></jsp:include>--%>
</body>
<!-- //Body -->
</html>
