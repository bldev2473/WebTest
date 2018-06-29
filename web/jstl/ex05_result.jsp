<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="animals" value="토끼,고양이*강아지,여우"/>
<h2>사자의 생일</h2>
<c:forTokens var="an" items="${animals}" delims=",*">
    ${an}<br>
</c:forTokens>
</body>
</html>
