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
    <link rel="stylesheet" href="../../css/lib/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/user.css"/>
    <%--<link rel="stylesheet" href="../../css/film_pro/predict.css"/>--%>
    <link rel="stylesheet" href="../../css/film_pro/index_pro.css"/>
    <link rel="stylesheet" href="../../css/button.css" type="text/css" media="all">
    <script src="../../js/ajax.js"></script>
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
    <jsp:include page="template/navbar.jsp"></jsp:include>
    <!-- //Top-Bar -->
    <div class="banner">
        <div class="bann-info">
            <h3>FilmdiaPro</h3>
            <div class="intro">
                <p>Numerous movie market statistical analysis and box office prediction based on machine learning</p>
            </div>

        </div>
    </div>
    <!-- //Slider -->
</div>


<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script>document.getElementById('nav_home').className='active'</script>
<script src="../../js/lib/jquery-1.11.1.min.js"></script>
<script src="../../js/search_pro.js"></script>

</body>
<!-- //Body -->
</html>
