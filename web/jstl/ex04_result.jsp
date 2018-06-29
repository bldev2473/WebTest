<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="cnt" begin="1" end="7">
    <c:forEach var="col" items="${color}">
        <font color="${col}" size="${cnt}">야호</font>
    </c:forEach>
    <br>
</c:forEach>
</body>
</html>
