<%@ page import="java.util.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="date" value="<%= new Date()%>"/>
<body>
<h2>현재 날짜와 시간</h2>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short"/><br>
<fmt:formatDate value="${date}" type="both" dateStyle="medium" timeStyle="medium"/><br>
<fmt:formatDate value="${date}" type="both" dateStyle="long" timeStyle="long"/><br>
<fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full"/><br>
</body>
</html>
