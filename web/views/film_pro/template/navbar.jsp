<div class="top-bar w3-1">
    <div class="container" style="width: 80%;">
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
                    <h1><a class="navbar-brand" href="index_pro.jsp"><img style="height: 41px; width: 232px" src="../../../images/FilmdiaPro.png"></a></h1>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav ">
                        <li><a href="index_pro.jsp" id="nav_home">HOME</a></li>
                        <li><a href="library.jsp" id="nav_lib">LIBRARY</a></li>
                        <li><a href="statistic.jsp" id="nav_stat">STATISTICS</a></li>
                        <li><a href="predict.jsp" id="nav_pred">PREDICTION</a></li>
                    </ul>

                    <jsp:include page="../../common/searchbar.jsp"></jsp:include>
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