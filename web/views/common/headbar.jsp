<div class="top-bar w3-1">
    <div class="container">
        <div class="header-nav w3-agileits-1">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <h1><a class="navbar-brand" href="index.jsp"><img src="../images/logo2.png"></a></h1>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav ">
                        <%--TODO: href and active--%>
                        <li><a class="active" href="index.jsp">Home</a></li>
                        <li><a href="views/library.jsp">Library</a></li>
                        <li><a href="views/statistic.jsp">Statistic</a></li>
                        <li><a href="views/predict.jsp">Predict</a></li>
                    </ul>
                    <jsp:include page="searchbar.jsp"></jsp:include>
                    <div id="userBox" class="user-manage">
                        <img id="userCenter" src="images/Center.png">
                        <div id="userUnderBox">
                            <div style="text-indent:0;text-align: center">Hello, <span>xxx</span>!</div>
                            <ul>
                                <li>
                                    <img src="images/userCenter.png"/><a href="views/userCenter.jsp">User Center</a>
                                </li>
                                <li><img src="images/exit.png"/><a href="" onclick="signOut()">Sign Out</a></li>
                            </ul>
                        </div>
                        <!--<a href="" class="sign-in-out" style="color: #fff">Sign In/Up</a>-->
                        <!--<span style="color: #fff"> | </span>-->
                        <!--<a href="" class="sign-up" style="color: #fff">Sign Up</a>-->
                    </div>
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