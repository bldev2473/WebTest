<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 29.
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>부서 정보 수정</h2>
<form action="ora07_result2.jsp">
    부서코드: ${dept_no}<br>
    <input type="hidden" name="dept_no" value="${dept_no}">
    부서명: <input type="text" name="dept_name" value="${dept_name}">
    근무지: <input type="text" name="dept_loc" value="${dept_loc}">
    <input type="submit" value="수정">
 </form>
</body>
</html>
