<%--
  Created by IntelliJ IDEA.
  User: xuyangchen
  Date: 2017/6/12
  Time: 下午9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error · Filmdia</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            width: 100%;
        }
        h1{
            text-align: center;
        }
        div{
            position: absolute;
            width: 100%;
            height: 580px;
            background: url("../../images/userCenterBg.jpeg") center no-repeat;
        }
    </style>
</head>
<body>
<h1>You meet error!<span id="errorMsg"></span></h1>
<h1>But don't worry.</h1>
<h1>That's life.</h1>
<h1><a href="../../index.jsp">Back To Home</a></h1>
<div></div>
<script>
    var errorMsg = document.getElementById('errorMsg');
    errorMsg.innerHTML = ${exception};
</script>
</body>
</html>
