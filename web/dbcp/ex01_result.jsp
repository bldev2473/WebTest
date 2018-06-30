<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>사원 정보</h2>
사번: ${emp.empNo}<br>
이름: ${emp.empName}<br>
급여: <fmt:formatNumber value="${emp.sal}" groupingUsed="true"/><br>
입사일: <fmt:formatDate value="${emp.hireDate}" pattern="yyyy/MM/dd"/><br>
입사일: <fmt:formatDate value="${emp.hireDate}" pattern="yyyy-MM-dd"/>
</table>
</body>
</html>
