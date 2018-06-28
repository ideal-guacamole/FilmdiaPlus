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
    <title>Statistic · Filmdia</title>
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
    <link rel="stylesheet" href="../../css/user.css"/>
    <link rel="stylesheet" href="../../css/film_pro/statistic.css"/>
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../js/lib/echarts.js"></script>
    <script type="text/javascript" src="../../js/infographic.js"></script>
    <script type="text/javascript" src="../../js/dark.js"></script>
    <script type="text/javascript" src="../../js/dataTool.js"></script>
</head>
<!-- //Head -->
<!-- Body -->
<body>
<!-- Header -->
<div class="header">
    <jsp:include page="template/navbar.jsp"></jsp:include>
    <div class="banner statistic-background">
        <div id="banner" class="bann-info">
            <h1><em>32254</em> films from <em>123</em> countries,</h1>
            <h1>across <em>104</em> years,</h1>
            <h1>with <em>50472</em> directors and actors,</h1>
            <h1>and <em>2151560</em> reviews,</h1>
            <h1>consist of the analysis following...</h1>
        </div>
    </div>

    <!-- //Slider -->
</div>

<ul id="indexList" class="index">
    <div align="center"
         style="color: orange;font-size: 20px;line-height: 40px;border: 1px solid #f1f1f1;border-top: none">Index
    </div>
    <li><a href="#chart1">Score Overview</a></li>
    <li><a href="#chart2">Budget & Gross</a></li>
    <li><a href="#chart3">Each Year Top 5</a></li>
    <li><a href="#chart4">High Score Top 10</a></li>
    <li><a href="#chart5">Gross & Tag</a></li>
    <li><a href="#chart6">Score & Tag</a></li>
    <li><a href="#chart7">Douban vs IMDB</a></li>
    <li><a href="#chart8">Score Fluctuation</a></li>
    <li><a href="#chart9">Click & Gross</a></li>

</ul>
<script type="text/javascript" src="../../js/lib/jquery.smooth-scroll.js"></script>
<script>
    $('a').smoothScroll({
        speed: 1000
    });
    var indexList = document.getElementById('indexList');
    var oArrow = indexList.firstElementChild;
    var aLi = indexList.getElementsByTagName('li');
    // oArrow.style.display = 'none';
    indexList.onmouseover = function () {
        oArrow.style.display = 'none';
        for (var i = 0; i < aLi.length; i++) {
            aLi[i].style.display = 'block';
            aLi[i].style.opacity = 1;
        }
    };
    indexList.onmouseout = function () {
        oArrow.style.display = 'block';
        for (var i = 0; i < aLi.length; i++) {
            aLi[i].style.opacity = 0;
            aLi[i].style.display = 'none';
        }
    };
    var lastLi = aLi[0];
    for (var i = 0; i < aLi.length; i++) {
        aLi[i].onclick = function () {
            lastLi.className = '';
            this.className = 'active';
            lastLi = this;
            console.log(lastLi);
        }
    }

    window.onscroll = function () {
        var oScroll = document.body.scrollTop || document.documentElement.scrollTop;
        var lock = false;
        if (oScroll >= 500 && !lock) {
            lock = true;
            indexList.style.display = 'block';
        }
        if (oScroll < 500) {
            lock = false;
            indexList.style.display = 'none';
            for (var i = 0; i < aLi.length; i++) {
                aLi[i].style.opacity = 0;
                aLi[i].style.display = 'none';
            }
            indexList.style.width = '0';
        }
        if (oScroll >= 500 && !lock) {
            lock = true;
            indexList.style.width = '300px';
            for (var i = 0; i < aLi.length; i++) {
                aLi[i].style.display = 'block';
                aLi[i].style.opacity = 1;
            }
        }

    }
</script>
<div>
    <div class="section">
        <div id="chart1" class="container">
            <h2 class="tittle">Each Year Score Overview</h2>
            <div class="chart-text">
                <p>Since 1950s, each year score's upper and lower is expanding.</p>
                <p>Most outliers lies below the lower score.</p>
            </div>
            <div class="chart" id="eachYearScoreBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart2" class="container">
            <h2 class="tittle">Each Year Average Budget and Gross in Different Scores</h2>
            <div class="chart-text">
                <p>We can find that high score films' average gross is often higher than their
                    average budget.</p>
                <p>However, these low score films' average gross is usually lower than their average budget.</p>
            </div>
            <div class="chart" id="scatterBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart3" class="container">
            <h2 class="tittle">Each Year Tag Top 5</h2>
            <div class="chart-text">
                <p>Drama and Comedy is always the most popular tag for folks in the whole development of films.</p>
            </div>
            <div class="chart" id="tagTop5PieChartBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart4" class="container">
            <h2 class="tittle">High Score Tag Top 10</h2>
            <div class="chart-text">
                <p>From the High Score Tag Top 10, we can infer what kind of films people like and according to this,
                    directors can aim at these categories to make more profit and produce better works.</p>
            </div>
            <div class="chart" id="highScoreTop10PieChartBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart5" class="container">
            <h2 class="tittle">Gross of Each Tag</h2>
            <div class="chart-text">
                <p>From this graph, it mainly shows that the relationship between gross and tag.</p>
                <p>In the meanwhile, max min avg are three dimensions to estimate the profit.</p>
            </div>
            <div class="chart" id="stackChartInfoForTagAndGrossBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart6" class="container">
            <h2 class="tittle">Score of Each Tag</h2>
            <div class="chart-text">
                <p>From this graph, it mainly shows that the relationship between score and tag.</p>
                <p>In the meanwhile, max min avg are three dimensions to estimate the quality of the films.</p>
            </div>
            <div class="chart" id="stackChartInfoForTagAndScoreBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart7" class="container">
            <h2 class="tittle">Douban vs IMDB</h2>
            <div class="chart-text">
                <p>This is the chart to compare chinese favorite and foreign favorite, we can conclude that score given
                    by china is higher than foreigners'</p>
            </div>
            <div class="chart" id="lineChartInfoForDoubanAndIMDBBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart8" class="container">
            <h2 class="tittle">Score Fluctuation Since 1925</h2>
            <div class="chart-text">
                <p>This chart displays the score fluctuation each year. From the four dimensions in the chart : max min
                    avg variance ,we can judge the quality of the films of some year.</p>
            </div>
            <div class="chart" id="lineChartInfoForEachYearScoreBox"></div>
        </div>
    </div>
    <div class="section">
        <div id="chart9" class="container">
            <h2 class="tittle">Gross And Youtube Clicks</h2>
            <div class="chart-text">
                <p>From this diagram, we can guess the relation between the Youtube click times and gross. In general,
                    the more click times, the more grosses.</p>
            </div>
            <div class="chart" id="scatterChartForYTBBox"></div>
        </div>
    </div>
    <script>
        window.onload = function () {
            var bannerDiv = document.getElementById('banner');
            var h1Arr = bannerDiv.getElementsByTagName('h1');
            makeEachYearScore();
            makeScatter();
            makePieChartInfoForEachYearTopTagTop5();
            makePieChartInfoForHighScoreTagTop10();
            makeStackChartInfoForTagAndGross();
            makeStackChartInfoForTagAndScore();
            makeLineChartInfoForDoubanAndIMDB();
            makeLineChartInfoForEachYearScore();
            makeScatterChartForYTB();
            setTimeout(function () {
                h1Arr[0].style.cssText = "opacity: 1;text-indent: 200px";
                setTimeout(function () {
                    h1Arr[1].style.cssText = "opacity: 1;text-indent: 200px";
                    setTimeout(function () {
                        h1Arr[2].style.cssText = "opacity: 1;text-indent: 200px";
                        setTimeout(function () {
                            h1Arr[3].style.cssText = "opacity: 1;text-indent: 200px";
                            setTimeout(function () {
                                h1Arr[4].style.cssText = "opacity: 1;text-indent: 200px";
                            }, 1000);
                        }, 1000);
                    }, 1000);
                }, 1000);
            }, 1000);


        };

        function makeScatterChartForYTB() {
            var scatterChartForYTBBox = document.getElementById('scatterChartForYTBBox');
            var scatterChartForYTB = echarts.init(scatterChartForYTBBox, 'infographic');
            $.ajax({
                type: 'get',
                url: '/filmChart/getScatterChartInfoForYTB.action',
                success: function (data) {
                    var seriesData = [];
                    for (var i = 0; i < data.length; i++) {
                        var tempData = [];
                        tempData.push(data[i].year);
                        tempData.push(data[i].avg_gross);
                        seriesData.push(tempData);
                    }
                    var option = {
                        tooltip: {
                            formatter: function (params) {
                                return [
                                    'Youtube Clicks: ' + params.value[0],
                                    'Gross: ' + params.value[1]
                                ].join('<br />');
                            }
                        },
                        dataZoom: [
                            {
                                type: 'slider',
                                xAxisIndex: 0,
                                start: 0,
                                end: 17,
                                bottom: -5
                            },
                            {
                                type: 'slider',
                                yAxisIndex: 0,
                                left: 5,
                                width: 30
//                                top: 0
                            }
                        ],
                        grid: {
                            left: '12%'
                        },
                        xAxis: {
                            name: 'Click Times',
                            type: 'value'
                        },
                        yAxis: {
                            name: 'Money($)',
                            type: 'value'
                        },
                        series: {
                            type: 'scatter',
                            data: seriesData
                        }

                    };
                    scatterChartForYTB.setOption(option);
                }
            });
        }

        function makeEachYearScore() {
            var years = [];
            var i = 0;
            for (i = 1925; i <= 2017; i++) {
                years.push(i + '');
            }
            var eachYearScoreBox = document.getElementById('eachYearScoreBox');
            var eachYearScoreChart = echarts.init(eachYearScoreBox, 'infographic');
            var tempData = [];
            for (i = 0; i < years.length; i++) {
                $.ajax({
                    type: 'post',
                    url: '/filmChart/getBoxChartInfoForEachYearScore.action',
                    contentType: 'application/json;charset=utf-8',
                    data: years[i],
                    success: function (data) {
                        tempData.push(data);
                        if (tempData.length === years.length) {
                            var seriesData = echarts.dataTool.prepareBoxplotData(tempData);
                            var option = {
                                tooltip: [{
                                    trigger: 'item',
                                    axisPointer: {
                                        type: 'shadow'
                                    }
                                }],
                                xAxis: {
                                    type: 'category',
                                    name: 'Year',
                                    axisTick: {
                                        alignWithLabel: true
                                    },
                                    data: years
                                },
                                yAxis: {
                                    type: 'value',
                                    name: 'Score',
                                    max: 10
                                },
                                dataZoom: [
                                    {
                                        show: true,
                                        height: 20,
                                        type: 'slider',
                                        top: '95%',
                                        start: 80,
                                        end: 100
                                    }
                                ],
                                series: [{
                                    type: 'boxplot',
                                    data: seriesData.boxData,
                                    tooltip: {
                                        formatter: function (param) {
                                            return [
                                                'Year:' + param.name,
                                                'upper: ' + param.data[4],
                                                'Q3: ' + param.data[3],
                                                'median: ' + param.data[2],
                                                'Q1: ' + param.data[1],
                                                'lower: ' + param.data[0]
                                            ].join('<br/>')
                                        }
                                    }
                                }, {
                                    type: 'scatter',
                                    data: seriesData.outliers,
                                    name: 'outlier',
                                    symbolSize: '6',
                                    tooltip: {
                                        formatter: function (param) {
                                            return [
                                                'Year:' + param.name,
                                                'Score:' + param.data[1]
                                            ].join('<br/>')
                                        }
                                    }
                                }]
                            };
                            eachYearScoreChart.setOption(option);
                        }
                    }
                });
            }
        }

        function makeScatter() {
            var scatterBox = document.getElementById('scatterBox');
            var scatterChart = echarts.init(scatterBox, 'dark');
            var years = [];
            for (var i = 1925; i <= 2017; i++) {
                years.push(i + '');
            }
            $.ajax({
                type: 'get',
                url: '/filmChart/getScatterChartInfo.action',
                success: function (data) {
                    var budgetData = [];
                    var grossData = [];
                    $.each(data, function (i, item) {
                        var tempData = [];
                        tempData.push(item.year + '');
                        tempData.push(item.avg_budget);
                        tempData.push(item.number);
                        tempData.push(item.scoreInterval);
                        budgetData.push(tempData);
                        tempData = [];
                        tempData.push(item.year + '');
                        tempData.push(item.avg_gross);
                        tempData.push(item.number);
                        tempData.push(item.scoreInterval);
                        grossData.push(tempData);
                    });
                    var itemStyle = {
                        normal: {
                            opacity: 0.8,
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowOffsetY: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    };
                    var option = {
                        legend: {
                            y: 'top',
                            x: '20%',
                            data: ['Average Gross', 'Average Budget']
                        },
                        backgroundColor: '#606060',
                        tooltip: {
                            padding: 10,
                            backgroundColor: '#222',
                            borderColor: '#777',
                            borderWidth: 1,
                            formatter: function (obj) {
                                var value = obj.value;
                                var moneyName = obj.seriesName === 'Average Budget' ? 'Budget' : 'Gross';
                                return [obj.seriesName,
                                    ' Year: ' + value[0],
                                    moneyName + ': ' + value[1],
                                    'Number: ' + value[2],
                                    'Score Interval: ' + value[3]].join('<br/>');
                            }
                        },
                        xAxis: {
                            type: 'category',
                            name: 'Year',
                            axisTick: {
                                alignWithLabel: true
                            },
                            data: years
                        },
                        yAxis: {
                            type: 'value',
                            name: 'Money($)'
                        },
                        dataZoom: [
                            {
                                type: 'slider',
                                xAxisIndex: [0],
                                start: 0,
                                end: 100
                            },
                            {
                                type: 'slider',
                                yAxisIndex: [0],
                                start: 0,
                                end: 50
                            }
                        ],
                        visualMap: [{
                            show: false,
                            dimension: 2,
                            min: 0,
                            max: 250,
                            itemWidth: 30,
                            itemHeight: 120,
                            calculable: true,
                            precision: 0.1,
                            inRange: {
                                symbolSize: [10, 70]
                            },
                            outOfRange: {
                                symbolSize: [10, 70],
                                color: ['rgba(255,255,255,.2)']
                            },
                            controller: {
                                inRange: {
                                    color: ['#c23531']
                                },
                                outOfRange: {
                                    color: ['#444']
                                }
                            }
                        },
                            {
//                            left: 'right',
                                orient: 'horizontal',
                                right: '0',
                                top: '0',
                                dimension: 3,
                                selectedMode: 'single',
                                categories:
                                    ['over 8', '7 to 8', '6 to 7', '5 to 6', 'below 5'],
//                            text: ['Shape: Score'],
//                            textGap: 30,
                                color: '#ffdb79',
                                textStyle: {
                                    color: '#fff'
                                },
                                selected: {
                                    'below 5': false,
                                    '5 to 6': false,
                                    '6 to 7': false,
                                    '7 to 8': false,
                                },
                                hoverLink: false,
                                inRange: {
                                    symbol: {
                                        'below 5': 'diamond',
                                        '5 to 6': 'roundRect',
                                        '6 to 7': 'triangle',
                                        '7 to 8': 'rect',
                                        'over 8': 'circle'
                                    }
                                },
                                outRange: {
                                    symbol: {
                                        'below 5': 'diamond',
                                        '5 to 6': 'arrow',
                                        '6 to 7': 'triangle',
                                        '7 to 8': 'rect',
                                        'over 8': 'circle',
                                    }
                                }
                            }],
                        series: [
                            {
                                name: 'Average Gross',
                                type: 'scatter',
                                itemStyle: itemStyle,
                                data: grossData,
                                symbolSize: function (data) {
                                    return data[2];
                                }
                            },
                            {
                                name: 'Average Budget',
                                type: 'scatter',
                                itemStyle: itemStyle,
                                data: budgetData,
                                symbolSize: function (data) {
                                    return data[2];
                                }
                            }
                        ]
                    };
                    scatterChart.setOption(option);
                }
            });

        }

        function makePieChartInfoForEachYearTopTagTop5() {
            var tagTop5PieChartBox = document.getElementById('tagTop5PieChartBox');
            var tagTop5PieChart = echarts.init(tagTop5PieChartBox, 'infographic');
            $.ajax({
                type: 'get',
                url: '/filmChart/getPieChartInfoForEachYearTagTop5.action',
                success: function (data) {
                    var num = 0;
                    var tempData = [];
                    for (var key in data[num]) {
                        tempData.push({
                            value: data[num][key],
                            name: key
                        });
                    }
                    tempData = tempData.sort(function (a, b) {
                        return a.value - b.value;
                    })
                    var option = {
                        baseOption: {
                            timeline: {
                                axisType: 'category',
                                orient: 'vertical',
                                autoPlay: true,
                                inverse: true,
                                playInterval: 1000,
                                left: null,
                                right: 0,
                                top: 20,
                                bottom: 20,
                                width: 55,
                                height: null,
                                label: {
                                    normal: {
                                        textStyle: {
                                            color: '#666'
                                        }
                                    },
                                    emphasis: {
                                        textStyle: {
                                            color: '#000'
                                        }
                                    }
                                },
                                symbol: 'none',
                                lineStyle: {
                                    color: '#333'
                                },
                                checkpointStyle: {
                                    color: '#bbb',
                                    borderColor: '#777',
                                    borderWidth: 2
                                },
                                controlStyle: {
                                    showNextBtn: false,
                                    showPrevBtn: false,
                                    normal: {
                                        color: '#666',
                                        borderColor: '#666'
                                    },
                                    emphasis: {
                                        color: '#aaa',
                                        borderColor: '#aaa'
                                    }
                                },
                                data: []
                            },
                            title: [{
                                'text': 1925,
                                textAlign: 'center',
                                left: '73%',
                                top: '55%',
                                textStyle: {
                                    fontSize: 30,
                                    color: 'rgba(0, 0, 0, 0.7)'
                                }
                            }],
                            tooltip: {
                                trigger: 'item',
                                formatter: "{a} <br/>{b} : {c} ({d}%)"
                            },
                            visualMap: {
                                show: false,
                                min: tempData[tempData.length - 1].value - 1,
                                max: tempData[0].value + 10,
                                inRange: {
                                    colorLightness: [0.3, 0.9]
                                }
                            },
                            series: [
                                {
                                    name: 'Distribution In Top 5',
                                    type: 'pie',
                                    radius: '75%',
                                    center: ['50%', '50%'],
                                    data: tempData,
                                    roseType: 'radius',
                                    label: {
                                        normal: {
                                            textStyle: {
                                                color: 'rgba(0, 0, 0, 0.8)'
                                            }
                                        }
                                    },
                                    labelLine: {
                                        normal: {
                                            lineStyle: {
                                                color: 'rgba(0, 0, 0, 0.8)'
                                            },
                                            smooth: 0.2,
                                            length: 10,
                                            length2: 20
                                        }
                                    },
                                    itemStyle: {
                                        normal: {
                                            color: '#27a7ff',
                                            shadowBlur: 10,
                                            shadowColor: 'rgba(0, 0, 0, 0.8)'
                                        }
                                    },
                                    animationType: 'scale',
                                    animationEasing: 'elasticOut',
                                    animationDelay: function (idx) {
                                        return Math.random() * 200;
                                    }
                                }
                            ],
                            animationDurationUpdate: 1000,
                            animationEasingUpdate: 'quinticInOut'
                        },
                        options: []
                    };
                    for (num = 0; num < 92; num++) {
                        tempData = [];
                        for (var key in data[num]) {
                            tempData.push({
                                value: data[num][key],
                                name: key
                            });
                        }
                        tempData = tempData.sort(function (a, b) {
                            return a.value - b.value;
                        })
                        option.baseOption.timeline.data.push(num + 1925);
                        option.options.push({
                            title: {
                                show: true,
                                'text': num + 1925 + ''
                            },
                            visualMap: {
                                show: false,
                                min: tempData[tempData.length - 1].value - 1,
                                max: tempData[0].value + 10,
                                inRange: {
                                    colorLightness: [0.5, 0.9]
                                }
                            },
                            series: {
                                name: 'Distribution In Top 5',
                                type: 'pie',
                                radius: '75%',
                                center: ['50%', '50%'],
                                data: tempData.sort(function (a, b) {
                                    return a.value - b.value;
                                }),
                                roseType: 'radius',
                                label: {
                                    normal: {
                                        textStyle: {
                                            color: 'rgba(0, 0, 0, 0.8)'
                                        }
                                    }
                                },
                                labelLine: {
                                    normal: {
                                        lineStyle: {
                                            color: 'rgba(0, 0, 0, 0.8)'
                                        },
                                        smooth: 0.2,
                                        length: 10,
                                        length2: 20
                                    }
                                },
                                itemStyle: {
                                    normal: {
                                        color: '#27a7ff',
                                        shadowBlur: 10,
                                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                                    }
                                },
                                animationType: 'scale',
                                animationEasing: 'elasticOut',
                                animationDelay: function (idx) {
                                    return Math.random() * 200;
                                }
                            }
                        });
                    }
                    tagTop5PieChart.setOption(option);
                }
            })
        }

        function makePieChartInfoForHighScoreTagTop10() {
            var highScoreTop10PieChartBox = document.getElementById('highScoreTop10PieChartBox');
            var highScoreTop10PieChart = echarts.init(highScoreTop10PieChartBox, 'dark');
            $.ajax({
                type: 'get',
                url: '/filmChart/getPieChartInfoForHighScoreTagTop10.action',
                success: function (data) {
                    var seriesData = [];
                    for (var key in data) {
                        seriesData.push({
                            value: data[key],
                            name: key
                        });
                    }
                    var option = {
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        backgroundColor: '#606060',
                        calculable: true,
                        series: [
                            {
                                name: 'Film Tag Distribution',
                                type: 'pie',
                                label: {
                                    normal: {
                                        textStyle: {
                                            fontSize: 20
                                        }
                                    },
                                    emphasis: {
                                        textStyle: {
                                            fontSize: 30
                                        }
                                    }
                                },
                                radius: [20, 200],
                                center: ['50%', '50%'],
                                roseType: 'area',
                                data: seriesData
                            }
                        ]
                    };
                    highScoreTop10PieChart.setOption(option);
                }
            })
        }

        function makeStackChartInfoForTagAndGross() {
            var stackChartInfoForTagAndGrossBox = document.getElementById('stackChartInfoForTagAndGrossBox');
            var stackChartInfoForTagAndGrossChart = echarts.init(stackChartInfoForTagAndGrossBox, 'infographic');
            $.ajax({
                type: 'get',
                url: '/filmChart/getStackChartInfoForTagAndGross.action',
                success: function (data) {
//                    console.log(data);
                    var tags = [];
                    var mins = [];
                    var avgs = [];
                    var maxs = [];
                    for (var i = 0; i < data.length; i++) {
                        tags.push(data[i].tag);
                        mins.push(data[i].min);
                        avgs.push(data[i].avg);
                        maxs.push(data[i].max);
                    }
                    var option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                            }
                        },
                        legend: {
                            data: ['Min Gross', 'Average Gross', 'Max Gross']
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            top: '5%',
                            bottom: '3%',
                            containLabel: true
                        },
                        xAxis: [
                            {
                                type: 'category',
                                name: 'Tag',
                                axisTick: {
                                    alignWithLabel: true
                                },
                                data: tags
                            }
                        ],
                        yAxis: [
                            {
                                name: 'Money($)',
                                type: 'value'
                            }
                        ],
                        series: [
                            {
                                name: 'Min Gross',
                                type: 'bar',
                                stack: 'Gross',
                                data: mins
                            },
                            {
                                name: 'Average Gross',
                                type: 'bar',
                                stack: 'Gross',
                                data: avgs
                            },
                            {
                                name: 'Max Gross',
                                type: 'bar',
                                stack: 'Gross',
                                data: maxs
                            }
                        ]
                    };
                    stackChartInfoForTagAndGrossChart.setOption(option);
                }
            });
        }

        function makeStackChartInfoForTagAndScore() {
            var stackChartInfoForTagAndScoreBox = document.getElementById('stackChartInfoForTagAndScoreBox');
            var stackChartInfoForTagAndScoreChart = echarts.init(stackChartInfoForTagAndScoreBox, 'dark');
            $.ajax({
                type: 'get',
                url: '/filmChart/getStackChartInfoForTagAndScore.action',
                success: function (data) {
                    var tags = [];
                    var mins = [];
                    var avgs = [];
                    var maxs = [];
                    for (var i = 0; i < data.length; i++) {
                        tags.push(data[i].tag);
                        mins.push(data[i].min);
                        avgs.push(data[i].avg);
                        maxs.push(data[i].max);
                    }
                    var option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                            }
                        },
                        backgroundColor: '#606060',
                        legend: {
                            data: ['Min Score', 'Average Score', 'Max Score']
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            top: '5%',
                            bottom: '3%',
                            containLabel: true
                        },
                        xAxis: [
                            {
                                name: 'Tag',
                                type: 'category',
                                axisTick: {
                                    alignWithLabel: true
                                },
                                data: tags
                            }
                        ],
                        yAxis: [
                            {
                                name: 'Score',
                                type: 'value'
                            }
                        ],
                        series: [
                            {
                                name: 'Min Score',
                                type: 'bar',
                                stack: 'Score',
                                data: mins
                            },
                            {
                                name: 'Average Score',
                                type: 'bar',
                                stack: 'Score',
                                data: avgs
                            },
                            {
                                name: 'Max Score',
                                type: 'bar',
                                stack: 'Score',
                                data: maxs
                            }
                        ]
                    };
                    stackChartInfoForTagAndScoreChart.setOption(option);
                }
            });
        }

        function makeLineChartInfoForDoubanAndIMDB() {
            var lineChartInfoForDoubanAndIMDBBox = document.getElementById('lineChartInfoForDoubanAndIMDBBox');
            var lineChartInfoForDoubanAndIMDB = echarts.init(lineChartInfoForDoubanAndIMDBBox, 'infographic');
            $.ajax({
                type: 'get',
                url: '/filmChart/getLineChartInfoForDoubanAndIMDB.action',
                success: function (data) {
                    var doubanData = [];
                    var imdbData = [];
                    var tags = [];
                    for (var i = 0; i < data.length; i++) {
                        tags.push(data[i].x);
                        imdbData.push(data[i].score_1);
                        doubanData.push(data[i].score_2);
                    }
                    var option = {
                        legend: {
                            data: ['Douban Average Score', 'IMDB Average Score']
                        },
                        tooltip: {
                            trigger: 'axis'
                        },
                        xAxis: {
                            name: 'Tag',
                            type: 'category',
                            axisTick: {
                                alignWithLabel: true
                            },
                            data: tags
                        },
                        yAxis: {
                            name: 'Score',
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'Douban Average Score',
                                type: 'line',
                                symbolSize: 8,
                                data: doubanData
                            },
                            {
                                name: 'IMDB Average Score',
                                type: 'line',
                                symbolSize: 8,
                                data: imdbData
                            }
                        ]
                    };
                    lineChartInfoForDoubanAndIMDB.setOption(option);
                }
            })
        }

        function makeLineChartInfoForEachYearScore() {
            var lineChartInfoForEachYearScoreBox = document.getElementById('lineChartInfoForEachYearScoreBox');
            var lineChartInfoForEachYearScore = echarts.init(lineChartInfoForEachYearScoreBox, 'dark');
            $.ajax({
                type: 'get',
                url: '/filmChart/getLineChartInfoForEachYearScore.action',
                success: function (data) {
                    var timeData = [];
                    var avgData = [];
                    var minData = [];
                    var maxData = [];
                    var varianceData = [];
                    $.each(data, function (i, item) {
                        timeData.push(item.x);
                        avgData.push(item.score_1);
                        maxData.push(item.score_2);
                        minData.push(item.score_3);
                        varianceData.push(item.score_4);
                    });
                    var option = {
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['Average Score', 'Min Score', 'Max Score', 'Variance']
                        },
                        backgroundColor: '#606060',
                        xAxis: {
                            name: 'Year',
                            type: 'category',
                            axisTick: {
                                alignWithLabel: true
                            },
                            data: timeData
                        },
                        yAxis: [
                            {
                                name: 'Score',
                                type: 'value'
                            },
                            {
                                name: 'Variance',
                                type: 'value'
                            }
                        ],
                        series: [
                            {
                                name: 'Average Score',
                                type: 'line',
                                data: avgData
                            },
                            {
                                name: 'Min Score',
                                type: 'line',
                                data: minData
                            },
                            {
                                name: 'Max Score',
                                type: 'line',
                                data: maxData
                            },
                            {
                                name: 'Variance',
                                type: 'line',
                                yAxisIndex: 1,
                                data: varianceData
                            }
                        ]
                    };
                    lineChartInfoForEachYearScore.setOption(option);
                }
            });
        }
    </script>
</div>

<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script>document.getElementById('nav_stat').className = 'active'</script>

<script src="../../js/search_pro.js"></script>

</body>
<!-- //Body -->
</html>