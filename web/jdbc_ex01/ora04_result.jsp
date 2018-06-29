<%@ page import="DTO.DeptDTO" %><%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 28.
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    DeptDTO ddto = (DeptDTO) request.getAttribute("dept_dto");
%>
<body>
<h2>부서정보</h2>
부서코드: <%= ddto.getDeptNo()%><br>
부서명: <%= ddto.getDeptName()%><br>
근무지: <%= ddto.getDeptLoc()%><br>
<h2>부서정보</h2>
부서코드: ${dept_dto.deptNo}<br>
부서명: ${dept_dto.deptName}<br>
근무지: ${dept_dto.deptLoc}<br>
</body>
</html>
