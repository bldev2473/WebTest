<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 12.
  Time: 오전 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String masterID = application.getInitParameter("MasterID");
    String masterPW = application.getInitParameter("MasterPW");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    if (id.equals(masterID) && pw.equals(masterPW)) {
        session.setAttribute("MasterLoginID", id);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
로그인 성공<br>
<a href="login_check.jsp">로그인 체크</a>
</body>
</html>
<% } else if (id.equals(masterID)) { %>
<script>
    alert("패스워드가 일치하지 않습니다.");
    history.go(-1);
</script>
<% } else { %>
<script>
    alert("ID가 일치하지 않습니다.");
    history.go(-1);
</script>
<%
    }
%>