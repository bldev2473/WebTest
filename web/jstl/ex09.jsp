<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="greet" value="How Are You?"/>
<body>
<h2>인사말</h2>
원글: ${greet}<br>
대문자: ${fn:toUpperCase(greet)}<br>
소문자: ${fn:toLowerCase(greet)}<br>
Are 위치: ${fn:indexOf(greet, "Are")}<br>
Are 변경: ${fn:replace(greet, "Are", "Were")}<br>
문자 길이: ${fn:length(greet)}
</body>
</html>
