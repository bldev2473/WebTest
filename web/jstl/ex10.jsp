<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:formatNumber value="10000" groupingUsed="true"/><br>
<fmt:formatNumber value="3.1415923" pattern="#.###"/><br>
<fmt:formatNumber value="3.1" pattern="#.##"/><br>
<fmt:formatNumber value="121434323453." pattern="##,###.00"/><br>
<fmt:formatNumber value="250000" type="currency" currencySymbol="\\"/><br>
<fmt:formatNumber value="0.75" type="percent"/><br>
</body>
</html>
