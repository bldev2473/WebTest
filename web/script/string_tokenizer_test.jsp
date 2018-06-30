<%@ page import="java.util.StringTokenizer" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 5.
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
StringTokenizer<br>
<%
    String date1 = "2018/06/06";
    String[] date1Arr = date1.split("/"); // 구분자를 이용해서 문자열 분리
    for (int i = 0; i < date1Arr.length; i++) {
        out.print(date1Arr[i] + "<br/>");
    }
    String date2 = "2018-06/05";
    StringTokenizer st = new StringTokenizer(date2, "-/");
    out.print("st.countTokens() = " + st.countTokens() + "<br/>"); // st.countTokens()는 date1Arr.length와 동일한 역할을 함
    while(st.hasMoreTokens()){ // 토큰이 있으면 true
        out.println(st.nextToken() + "<br/>");
    }
%>
<hr>
Calendar<br>
<%
    Calendar cal = Calendar.getInstance();
    out.print(cal.get(Calendar.YEAR) + "년 <br/>");
%>
<%= cal.get(Calendar.MONDAY) + 1 %>월
<%= cal.get(Calendar.DATE) %>일

</body>
</html>
