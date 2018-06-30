<%@ page import="Point.Point" %><%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 4.
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    Point p1 = new Point();
    Point p2 = new Point(10, 20);
%>
The number of Point instances: <%= Point.getInstanceNum() %>
p1's x: <%= p1.getX() %><br/>
p1's y: <%= p1.getY() %><br/>
p2's x: <%= p2.getX() %><br/>
p2's y: <%= p2.getY() %><br/>
<%
    p1.move(100, 200);
%>
p1's x: <%= p1.getX() %><br/>
p1's y: <%= p1.getY() %><br/>
</body>
</html>