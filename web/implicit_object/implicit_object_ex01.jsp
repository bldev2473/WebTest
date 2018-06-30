<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 30.
  Time: 오전 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
기본 객체에 값 저장<br/>
<%
    pageContext.setAttribute("id", "asdf01");
    request.setAttribute("id", "asdf02");
    session.setAttribute("id", "asdf03");
    application.setAttribute("id", "asdf04");
%>
<form action="implicit_object_ex02.jsp">
    <input type="text" name="id"/>
    <input type="submit" name="submit"/>
</form>
</body>
</html>
