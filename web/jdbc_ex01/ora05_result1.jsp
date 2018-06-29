<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="edto" items="${al}">
    <c:out value="${edto.empNo}"/>, <c:out value="${edto.empName}"/>
    <br>
</c:forEach>
</table>
</body>
</html>
