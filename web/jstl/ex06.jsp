<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="date" value="<%= new Date()%>"/>
<body>
서울: <fmt:formatDate value="${date}" type="both"/><br>
<fmt:timeZone value="Asia/Hong_Kong">
    홍콩: <fmt:formatDate value="${date}" type="both"/><br>
</fmt:timeZone>
<fmt:timeZone value="Europe/London">
    런던: <fmt:formatDate value="${date}" type="both"/><br>
</fmt:timeZone>
<fmt:timeZone value="America/New_York">
    뉴욕: <fmt:formatDate value="${date}" type="both"/><br>
</fmt:timeZone>
</body>
</html>
