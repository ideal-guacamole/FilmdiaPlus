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
<!--loginBox-->

<script type="text/javascript" src="../js/lib/layer/layer.js"></script>

<div id="shield"></div>
<div id="loginBox">
    <%--<input id="cancelBtn" type="button"/>--%>
    <!--<input id="warningBtn" type="button" value="密码错误" />-->
    <img src="../../images/user/logo.png" alt=""/>

    <%--<div id="initArea">--%>
        <%--<input type="button" value="Sign In"/><br/><br/>--%>
        <%--<div>Or</div>--%>
        <%--<br/>--%>
        <%--<input type="button" value="Sign Up">--%>
    <%--</div>--%>

    <form id="signInForm" action="" method="post">
        <input id="userText1" name="userName" type="text" placeholder="Input your username" class="input-places"/>
        <div class="hint" id="userHint1">Username</div>
        <input id="passwordText1" name="password" type="password" placeholder="Input your password" class="input-places"/>
        <div class="hint" id="passwordHint1">Password</div>
        <input id="signInSubmit" type="button" value="Sign In"/>
        <div class="warning" id="signInWarning"></div>
        <div id="forget">Forgot your password?</div>
        <div class="tab" id="toSignUp">Sign Up</div>
    </form>

    <form id="signUpForm" action="" method="post">
        <input id="userText2" name="userName" type="text" placeholder="Pick a username" class="input-places"/>
        <div class="hint" id="userHint2">Username</div>
        <input id="passwordText2" name="password" type="password"
               placeholder="Use at least 6 and at most 12 characters" class="input-places"/>
        <div class="hint" id="passwordHint2">Password</div>
        <input id="passwordText3" type="password" placeholder="Input your password again" class="input-places"/>
        <div class="hint" id="passwordHint3">Confirm Password</div>
        <input id="signUpSubmit" type="button" value="Sign Up">
        <div class="warning" id="signUpWarning"></div>
        <div class="tab" id="toSignIn">Sign In</div>
    </form>
    <script src="../../js/mylib.js"></script>
    <script src="../../js/user.js"></script>
    <script>
        if ('<%=userAccount.getUserName()%>' !== '') {
            userFunction(true, '<%=userAccount.getUserName()%>');
        }
        else {
            userFunction(false, '');
        }
    </script>
</div>
