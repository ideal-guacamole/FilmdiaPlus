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
  Date: 2017/5/16
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<!-- Head -->
<head>
    <title>User Center · Filmdia</title>
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
    <!-- //Custom-Theme-Files -->
    <!-- Web-Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" type="text/css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700" type="text/css">
    <!-- //Web-Fonts -->
    <!-- Default-JavaScript-File -->
    <script type="text/javascript" src="../../js/lib/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="../../js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../js/lib/layer/layer.js"></script>

    <!-- Own css and js-->
    <script type="text/javascript" src="../../js/lib/jquery.min.js"></script>

    <!-- Star css and js -->
    <!-- <script type="text/javascript" src="../js/jquery.js"></script> -->
    <!-- script type="text/javascript" src="jquery.rater.js"></script -->
    <!-- 	<script type="text/javascript" src="../js/jquery.rater.packed.js"></script>
        <link rel="stylesheet" type="text/css" href="../css/rater.css" media="all" />  -->

    <!--Pagination css-->
    <link rel="stylesheet" href="../../css/pagi3.css" type="text/css" media="all">
    <!-- Button css -->
    <link rel="stylesheet" href="../../css/button.css" type="text/css" media="all">
    <!-- Own css -->
    <link rel="stylesheet" href="../../css/adminUI.css" type="text/css" media="all">
    <link rel="stylesheet" href="../../css/library.css" type="text/css">
    <link rel="stylesheet" href="../../css/user.css">
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
                        <h1><a class="navbar-brand" href="../../index.jsp"><img src="../../images/logo2.png"
                                                                                style="top:-65px;"></a></h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">
                            <li><a href="../../index.jsp">Home</a></li>
                            <%--<li><a href="library.jsp">Library</a></li>--%>
                            <%--<li><a href="details.jsp">Statistic</a></li>--%>
                            <%--<li><a href="../film_pro/predict.jsp">Predict</a></li>--%>
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

    <!-- //Slider -->
</div>
<!-- //Header -->
<div class="banner" style="height: 50px;">

</div>

<div class="container2">

    <div class="Tab">

        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
            <script src="../../js/easyResponsiveTabs.js" type="text/javascript"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#horizontalTab').easyResponsiveTabs({
                        type: 'default', //Types: default, vertical, accordion
                        width: 'auto', //auto or any width like 600px
                        fit: true,   // 100% fit in a container
                        closed: 'accordion', // Start closed if in accordion view
                        activate: function (event) { // Callback function if tab is switched
                            var $tab = $(this);
                            var $info = $('#tabInfo');
                            var $name = $('span', $info);
                            $name.text($tab.text());
                            $info.show();
                        }
                    });

                    $('#verticalTab').easyResponsiveTabs({
                        type: 'vertical',
                        width: 'auto',
                        fit: true
                    });
                });
            </script>

            <div class="tabs_user" style="height: 100%; overflow: hidden;">
                <div></div>
                <div class="tab-left">
                    <ul class="resp-tabs-list">
                        <li class="resp-tab-item">Favorite</li>
                        <li class="resp-tab-item">Recommends</li>
                        <li class="resp-tab-item">Past Reviews</li>
                        <li class="resp-tab-item">Change Passoword</li>
                        <!-- <li class="resp-tab-item">Recover Form</li>
                        <li class="resp-tab-item">Contact Form</li> -->
                    </ul>
                </div>

                <div class="tab-right">
                    <div class="resp-tabs-container">
                        <%--Favorite--%>
                        <div class="tab-1 resp-tab-content" id="Favorite">
                            <!-- A film -->

                            <%--<!-- End of a film -->--%>
                        </div>
                        <%--Favorite end--%>

                        <%--Recommends--%>
                        <div class="tab-1 resp-tab-content" id="Recommends">
                            <!-- A film -->
                            <%--<!-- End of a film -->--%>
                        </div>
                        <%--Recommeds end--%>
                        <!-- Past Reviews -->
                        <div id="pastReviewBox" class="tab-1 resp-tab-content gallery-images">
                            <div id="reviewBox" class="reviews"></div>
                        </div>
                        <script>
                            var pastReviewBox = document.getElementById('reviewBox');
                            $.ajax({
                                type: 'post',
                                url: '/user/getPersonalReview.action',
                                contentType: 'application/json',
                                data: '<%=userAccount.getUserID()%>',
                                success: function (data) {
                                    if (data !== null && data.length !== 0) {
                                        for (var i = 0; i < data.length; i++) {
                                            (function () {
                                                var filmName = '';
                                                var num = i;
                                                $.ajax({
                                                    type: 'post',
                                                    url: '/film/getFilmName.action',
                                                    contentType: 'application/json;charset=utf-8',
                                                    data: data[i].imdb_filmID,
                                                    async: true,
                                                    success: function (data1) {
                                                        filmName = data1;
                                                        var stars = '';
                                                        for (var j = 0; j < data[num].score; j++) {
                                                            stars += '<img style="width: 18px" src="../../../images/star-small.png" />';
                                                        }
                                                        for (var j = 0; j < (10 - data[num].score); j++) {
                                                            stars += '<img style="width: 18px" src="../../../images/star-small-dark.png" />';
                                                        }

                                                        var helpfulnessArray = data[num].helpfulness.split("/");
                                                        var like = helpfulnessArray[0].replace(/,/g, "");
                                                        var dislike = helpfulnessArray[1].replace(/,/g, "") - like;

                                                        var reviewDiv = '';

                                                        if(data.length - 1 !== num) {
                                                            reviewDiv += '<div class="review_part" style="border-bottom: hidden">\n'
                                                        }else {
                                                            reviewDiv += '<div class="review_part">\n'
                                                        }

                                                        reviewDiv += '' +
                                                            '  <div class="review_title">\n' +
                                                            '    <span class="review_movieName">' + filmName + '</span>\n' +
                                                            '    <span class="review_time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + data[num].time.year + '-' + data[num].time.monthValue + '-' + data[num].time.dayOfMonth + '</span>\n' +
                                                            '      <div style="display:inline-block;position:absolute;top:13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + stars + '</div>\n' +
                                                            '  </div>\n' +
                                                            '  <span class="review_summary">' + data[num].summary + '</span>\n' +
                                                            '  <div class="review_text">' + data[num].text + '</div>\n' +
                                                            '  <div class="review_footer">&nbsp;&nbsp;\n' +
                                                            '    <span class="glyphicon glyphicon-thumbs-up" style="color: limegreen; margin-right: 5px"></span>   \n' +
                                                            '    <span style="font-size: 11px; color:#737373">' + like + '</span>&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                                                            '    <span class="glyphicon glyphicon-thumbs-down" style="margin-left: 10px; margin-right: 5px"></span>\n' +
                                                            '    <span style="font-size: 11px; color:#737373">' + dislike + '</span>\n' +
                                                            '  </div>  \n' +
                                                            '</div>'

                                                        pastReviewBox.innerHTML += reviewDiv;
                                                    }
                                                });
                                            })();
                                        }
                                    }else {
                                        pastReviewBox.innerHTML += '<div class="text-center" style="padding-top: 177px; padding-bottom: 177px">You have no past review.</div>';
                                    }
                                }
                            });
                        </script>
                        <!-- Past Reviews end-->
                        <%--Reset password--%>
                        <div class="tab-1 resp-tab-content">
                            <div class="w3l-sign-in" style="padding: 78.5px 150px 78.5px 150px">

                                <form action="#" method="post">
                                    <div class="row form-group">
                                        <label for="originalPassword" class="control-label text-right myLabel">Original Password: </label>
                                        <div style="float: left;width: 80%">
                                            <input id="originalPassword" type="password" class="form-control password"
                                                   name="password-original" placeholder="Input the original password"
                                                   required="">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label for="newPassword" class="control-label text-right myLabel">New Password: </label>
                                        <div style="float: left; width: 80%">
                                            <input id="newPassword" type="password" class="form-control password" name="password-new"
                                                   placeholder="Use at least 6 and at most 12 characters"
                                                   required="">
                                        </div>

                                    </div>
                                    <div class="row form-group">
                                        <label for="confirmPassword" class="control-label text-right myLabel">Confirm Password: </label>
                                        <div style="float: left; width: 80%">
                                            <input id="confirmPassword" type="password" class="form-control password" name="password-confirm"
                                                   placeholder="Input the new password again" required="">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <ul class="w3agile">
                                            <li>
                                                <div style="margin-left: 150px">
                                                    <input type="checkbox" id="brand1" value="">
                                                    <label for="brand1"><span></span>Remember me</label>
                                                </div>
                                            </li>
                                        </ul>
                                        <input id="confirmSubmit" type="submit" value="Confirm"
                                               style="float: right; margin-right: 0">
                                        <div class="clear"></div>
                                    </div>

                                </form>

                                <script>
                                    $("#confirmSubmit").click(function () {
                                        var originalPassword = document.getElementById('originalPassword');
                                        var newPassword = document.getElementById('newPassword');
                                        var confirmPassword = document.getElementById('confirmPassword');

                                        if (originalPassword.value === '') {
                                            layer.tips('not null', '#originalPassword', {
                                                tips: [2, 'red']
                                            });
                                        } else if (newPassword.value === '') {
                                            layer.tips('not null', '#newPassword', {
                                                tips: [2, 'red']
                                            });
                                        } else if (confirmPassword.value === '') {
                                            layer.tips('not null', '#confirmPassword', {
                                                tips: [2, 'red']
                                            });
                                        } else if (newPassword.value.length < 6 || newPassword.value.length > 12) {
                                            layer.tips('invalid', '#newPassword', {
                                                tips: [2, 'red']
                                            });
                                        }else if (newPassword.value !== confirmPassword.value) {
                                            layer.tips('inconsistent passwords', '#confirmPassword', {
                                                tips: [2, 'red']
                                            });
                                        }
                                        else {
                                            var data = {
                                                username: username,
                                                originalPassword: originalPassword.value,
                                                newPassword: newPassword.value
                                            };
                                            $.ajax({
                                                type: 'post',
                                                url: '/user/changePassword.action',
                                                data: data,
                                                //请求成功后的回调函数
                                                success: function (data) {
                                                    if (data.result === 'success') {
                                                        layer.msg('Update password successfully!', {icon: 6}, function () {
                                                            window.location.reload(true);
                                                        });
                                                    }
                                                    else {
                                                        layer.msg('Wrong original password!', {icon: 5}, function () {
                                                        });
                                                    }
                                                }
                                            });
                                        }
                                        return false;
                                    });
                                </script>
                            </div>
                        </div>
                        <%--Reset password end--%>
                        <!-- End tab -->
                    </div>
                </div>
                <!-- End tab-right -->
                <div class="clear"></div>

            </div>
            <!-- End tabs -->
        </div>
        <!-- End horizontalTab -->
    </div>
    <!-- End tab -->
</div>
<!-- End container -->

<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>

<jsp:include page="../common/footer.jsp"></jsp:include>

<script src="../../js/search.js"></script>

<%--启动加载收藏的电影\推荐的电影和过去评论--%>
<script>
    var Favorite = document.getElementById('Favorite');
    var Recommeds = document.getElementById('Recommends');
    var accountID = <%=userAccount.getUserID()%>;
    var username = "<%=userAccount.getUserName()%>";
    var recoBox = '';
    var temprecoBox = '';
    var filmBox = '';
    var tempBox = '';
    var favid = '';
    var filmImgUrl = null;
    var filmName = null;
    var filmSummary = null;
    var filmScore = null;
    var url = 'details.jsp';
    $(window).load(function () {
        getFav();
        getReco();
    })

    function getFav() {
        $.ajax({
            type: 'post',
            url: '/user/getFavorite.action',
            contentType: 'application/json;charset=utf-8',
            data: JSON.stringify(accountID),
            success: function (data) {
                $.each(data, function (i, item) {
                    Favorite.innerHTML = '';
                    favid = item.favoriteID;
                    url = setQueryString(url, 'filmID', item.filmID);

                    filmName = item.filmName;
                    filmSummary = item.summary;
                    if (filmSummary.length >= 150) {
                        filmSummary = filmSummary.substring(0, 150);
                        filmSummary += '...';
                    }
                    filmScore = item.score;
                    if (filmScore === 0) {
                        filmScore = '';
                    }

                    filmImgUrl = item.posterURL;
                    tempBox = '' +
                        '<div class="col-md-4 gal-left gal_mar">' +
                        '<div class="content-grid-effect slow-zoom vertical text-center">' +
                        '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
                        '<div class="img-box">' +
                        '<img src=' + filmImgUrl + ' alt="image" class="img-responsive zoom-img">' +
                        '</div>' +
                        '<div class="info-box">' +
                        '<div class="info-content">' +
                        '<p style="text-align: left">' + filmSummary + '</p>' +
                        '</div>' +
                        '<div class="caption_overlay">' +
                        '<div class="primary">' +
                        '<a href="' + url + '">' + filmName + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '<div class="deleteBtn" onclick="this.parentNode.parentNode.removeChild(this.parentNode);removeFav(' + item.favoriteID + ')">Remove</div>' +
                        '</div>';
                    filmBox += tempBox;
                });
                if(filmBox === '') {
                    Favorite.innerHTML = '<div class="text-center" style="padding-top: 207px; padding-bottom: 207px; color: rgba(255,255,255,.8)">You have no favorite film.</div>';
                }else {
                    Favorite.innerHTML = filmBox;
                }
            }
        });
    }

    function getReco() {
        $.ajax({
            type: 'post',
            url: '/user/getRecommendFilms.action',
            contentType: 'application/json;charset=utf-8',
            data: JSON.stringify(accountID),
            success: function (data) {
                $.each(data, function (i, item) {
                    Recommeds.innerHTML = '';
                    url = setQueryString(url, 'filmID', item.filmID);
                    url = setQueryString(url, 'imdb_filmID', item.imdb_filmID);
                    filmScore = item.score;
                    if (filmScore === 0) {
                        filmScore = '';
                    }
                    temprecoBox = '' +
                        '<div class="col-md-4 gal-left gal_mar">' +
                        '<div class="content-grid-effect slow-zoom vertical text-center">' +
                        '<a href="' + url + '" class="b-link-stripe b-animate-go  swipebox">' +
                        '<div class="img-box">' +
                        '<img src=' + item.posterURL + ' alt="image" class="img-responsive zoom-img">' +
                        '</div>' +
                        '<div class="info-box">' +
                        '<div class="info-content">' +
                        '<p style="text-align: left">' + item.summary + '</p>' +
                        '</div>' +
                        '<div class="caption_overlay">' +
                        '<div class="primary">' +
                        '<a href="' + url + '">' + item.name + '<span style="color: orange">' + '&nbsp;' + filmScore + '</span>' + '</a>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '</div>';
                    recoBox += temprecoBox;
                });
                if(recoBox === '') {
                    Recommeds.innerHTML = '<div class="text-center" style="padding-top: 207px; padding-bottom: 207px; color: rgba(255,255,255,.8)">You have no recommended film.</div>';

                }else {
                    Recommeds.innerHTML = recoBox;
                }
            }
        });
    }

    //从数据库中删除
    function removeFav(favID) {
        $.ajax({
            type: 'post',
            url: '/user/removeFavorite.action',
            contentType: 'application/json;charset=utf-8',
            data: JSON.stringify(favID),
            success: function (data) {
                if (data.result == 'success') {
                } else {
                    alert('Remove failed.');
                }
            }
        });
    }
</script>

</body>
<!-- //Body -->
</html>