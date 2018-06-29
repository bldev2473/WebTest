<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 27.
  Time: 오후 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>인사말</h2>
<c:choose>
    <c:when test="${param.num==0}">안녕하세요</c:when>
    <c:when test="${param.num==1}">하이하이</c:when>
    <c:when test="${param.num==2}">반갑습니다</c:when>
    <c:otherwise>헐! 누구</c:otherwise>
</c:choose>
</body>
</html>
