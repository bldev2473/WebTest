<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 30.
  Time: 오전 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // 웹서버에서 사용자마다 부여해 준 고유의 번호 (웹 1대1 채팅);
    out.println("Session ID: " + session.getId() + "<br/>");
// 접속한 사용자의 첫 접속시간
    out.println("Creation Time: " + new Date(session.getCreationTime()) + "<br/>");
// 사용자가 최근에 새로고침한 시간
    out.println("Last Access Time: " + new Date(session.getLastAccessedTime()) + "<br/>");
// 사용자의 연결 유지 시간 // 새로고침하면 초기화된다.
    out.println("Max Inactive Interval: " + session.getMaxInactiveInterval() + "<br/>");
// 아이디나 이름을 저장할 때도 session을 사용한다.
    session.setAttribute("id", "id"); //setAttribute("변수명", "값")
    session.setAttribute("e-mail", "e-mail");
// session에 저장된 값 가져오기
    out.print("session의 'id'에 저장된 값 : " + session.getAttribute("id") + "<br/>");
// session.getAttribute("변수명")
    out.print("session의 'e-mail'에 저장된 값 : " + session.getAttribute("e-mail"));
%>
</body>
</html>
