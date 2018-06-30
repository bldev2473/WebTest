<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String targetPage = request.getParameter("target") + ".jsp";
    if (request.getParameter("target") == null) {
        targetPage = "sub_contents1.jsp";
    }
%>
<body>
Main
<jsp:include page="sub_menu.jsp"/>
<jsp:include page="<%= targetPage%>"/>
</body>
</html>
