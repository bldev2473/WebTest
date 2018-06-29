<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style type="text/css">
    tr:hover {
        background-color: red;
    }
</style>
<table width="100%" bgcolor="yellow" border="1">
    <tr bgcolor="pink">
        <th>사번</th>
        <th>이름</th>
        <th>업무</th>
        <th>급여</th>
    </tr>
    <c:forEach var="emp" items="${al}">
        <tr>
            <td>${emp.empNo}</td>
            <td>${emp.empName}</td>
            <td>${emp.job}</td>
            <td>${emp.sal}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
