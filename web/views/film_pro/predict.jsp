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
    <link rel="stylesheet" href="../../css/user.css"/>
    <link rel="stylesheet" href="../../css/film_pro/predict.css"/>
    <link rel="stylesheet" href="../../css/button.css" type="text/css" media="all">

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
<div id="predict_container">

    <div class="header page">
        <!-- Top-Bar -->
        <jsp:include page="template/navbar.jsp"></jsp:include>
        <!-- //Top-Bar -->
        <div class="banner">
            <div class="bann-info">
                <h3><em>Box Office</em>&nbsp;&nbsp;Prediction&nbsp;&nbsp;Algorithm</h3>
                <div class="intro">
                    <p>To reasonably forecast the box office of the unpublished films,
                        we select 1997 movies from USA and Britain since 2009 as a sample
                        to analysis the relationship between some of their attributes and their final box office.</p>

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
                        With this model, we are able to predict the box office of the movies opening this week
                        or coming soon.</p>
                </div>

            </div>
        </div>
        <!-- //Slider -->
    </div>
    <div class="predict_item page" style="background-image: url(../../images/predict/Jurassic_R.jpg) ">
        <div class="card"></div>
    </div>
</div>
<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>
<script>document.getElementById('nav_pred').className = 'active'</script>
<script src="../../js/ajax.js"></script>
<script src="../../js/lib/echarts.js"></script>
<script src="../../js/infographic.js"></script>
<script src="../../js/lib/jquery-1.11.1.min.js"></script>
<link href="../../css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="../../js/lib/owl.carousel.js"></script>
<script src="../../js/film_pro/predict.js"></script>
<script src="../../js/search_pro.js"></script>
<script src="../../js/lib/pageSwitchCommon.js"></script>
<script src="../../js/lib/pageSwitch.min.js"></script>
<script>
    COM.$W.domReady(function() {
        var ps = null;
        ps = new pageSwitch({
            "container" : "predict_container", // 容器，默认为#container
            "easing" : "ease", // 特效方式，ease-in,ease-out,linear
            "duration" : 1000, // 每次动画执行的时间
            "pagination" : true, // 是否显示分页
            "loop" : false, // 是否循环
            "keyboard" : true, // 是否支持键盘
            "direction" : "vertical", // 滑动的方向，horizontal（水平）, vertical（垂直），默认垂直
            "pageSwitchComplete" : function(pageIndex) { // 切换完成的回调函数，参数为当前页的序号
                // sconsole.log("切换完成，当前页的序号为：" + pageIndex);
            }
        });
    });
</script>
</body>
<!-- //Body -->
</html>