<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="date" value="<%= new Date()%>"/>
<body>
오늘 날짜: <fmt:formatDate value="${date}"/>
현재 시간: <fmt:formatDate value="${date}}" type="time"/>
</body>
</html>
