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
                        <h1><a class="navbar-brand" href="index.jsp"><img src="images/logo2.png"></a></h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav ">
                            <li><a class="active" href="index.jsp">Home</a></li>
                            <li><a href="views/film/library.jsp">Library</a></li>
                            <li><a href="views/film/topfilms.jsp">Top Films</a></li>
                        </ul>
                        <jsp:include page="../common/searchbar.jsp"></jsp:include>
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

    <!-- //Slider -->
</div>
<!-- //Header -->
<div class="banner" id="movie-background"
     style="height:75vh;min-height: 400px;background: url('../../images/wallpaper/batman.jpg');">
    <div class="title-info">
        <div class="film_poster"><a href=""><img id="poster" style="width: 15vw" class="poster-image" src=""></a></div>
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
            <h1 class="heads-for-detail">ABOUT MOVIE</h1>
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
                <table class="table table-hover" id="castTable">
                    <colgroup>
                        <col class="Pic">
                        <col class="Name">
                        <col class="Role">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Name</th>
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

        <div class="product" id="recommend">
            <h1 class="heads-for-detail" style="margin-top: 0">RECOMMEND FOR YOU</h1>
            <%--<div class="recommend-title">Recommend For You--%>
            <%--</div>--%>
            <div class="recommend-wrapper">
                <div class="recommend-img">
                    <a href="details.jsp?filmID=1268&imdb_filmID=tt0055614">
                        <img style="width:19%;display: inline-block" src="../../images/posters/B005BDZQKU.jpg">
                    </a>
                </div>
                <div class="recommend-img">
                    <a href="details.jsp?filmID=978&imdb_filmID=tt1615147">
                        <img style="width:19%;display: inline-block" src="../../images/posters/B005FITIGO.jpg">
                    </a>
                </div>
                <div class="recommend-img">
                    <a href="details.jsp?filmID=378&imdb_filmID=tt1133985">
                        <img style="width:19%;display: inline-block" src="../../images/posters/B005I64U34.jpg">
                    </a>
                </div>
                <div class="recommend-img">
                    <a href="details.jsp?filmID=353&imdb_filmID=tt0458339">
                        <img style="width:19%;display: inline-block" src="../../images/posters/B005IZLPMY.jpg">
                    </a>
                </div>
                <div class="recommend-img">
                    <a href="details.jsp?filmID=1072&imdb_filmID=tt1599348">
                        <img style="width:19%;display: inline-block" src="../../images/posters/B005LAIGSC.jpg">
                    </a>
                </div>
            </div>
        </div>
        <!--Reviews-->
        <div id="reviews" class="product">
            <h1 class="heads-for-detail">REVIEWS</h1>
            <!--Write Reviews-->
            <div id="comment">
                <form id="commentForm" action="" method="post" class="basic-grey">
                </form>
                <div style="font: 0px/0px sans-serif;clear: both;display: block"></div>
            </div>

            <ul id="sort_option">
                <li class="selected_sort" id="helpfulness_btn"><a href="#">Helpfulness</a></li>
                <li id="release_btn"><a href="#">Release Date</a></li>
                <span id="order_btn" class="glyphicon glyphicon-sort"
                      style="color: #37a; margin-left:15px; font-size: 16px; cursor: pointer"></span>
            </ul>
            <div id="reviewBox" class="reviews">

            </div>
            <div style="font: 0px/0px sans-serif;clear: both;display: block"></div>
        </div>

    </div>
</div>

<script src="../../js/details/details.js"></script>

<!--loginBox-->
<jsp:include page="../common/loginbox.jsp"></jsp:include>

<script src="../../js/search.js"></script>

<script>
    loadReviews();

    function loadReviews() {
        layui.use('flow', function () {
            var flow = layui.flow;

            flow.load({
                elem: '#reviewBox' //流加载容器
                , scrollElem: '#reviewBox' //滚动条所在元素。
                , done: function (page, next) { //执行下一页的回调
                    setTimeout(function () {
                        var lis = [];
                        if (reviewNum !== 0) {
                            for (var i = 0; i < 10; i++) {
                                putReviews();
                                lis.push(review);
                            }
                        }
                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                        next(lis.join(''), page < reviewNum / 10);
                    }, 500);
                }
            });

        });
    }

</script>

<!-- footer -->
<%--<jsp:include page="common/footer.jsp"></jsp:include>--%>
</body>
<!-- //Body -->
</html>
