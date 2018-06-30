<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HashMap<String, String> map = new HashMap<>();
    map.put("A", "a");
    map.put("B", "b");
    map.put("C", "c");
    map.put("D", "d");
    request.setAttribute("Map", map);
    RequestDispatcher rd = request.getRequestDispatcher("ex02_result.jsp?name=A");
    rd.forward(request, response);
%>
</body>
</html>
