<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 4.
  Time: 오전 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
스크립트릿 (Scriptlet)<br>
<%
    int sum = 0;
    for (int i = 1; i <= 100; i++) {
        sum += i;
    }
%>
1 + 2 + 3 + ... + 100 = <%= sum %><hr/>

스크립트릿 분리 (표현식 사용)<br>
<% for (int i = 1; i <= 100; i++) { %>
<%= i %> +
<% } %>
<%= 100 %> = <%= sum %><hr/>

표현식 대신 스크립트릿을 사용하여 한 번에 출력<br>
<%
    for (int i = 1; i <= 100; i++) {
        out.print(i + " + ");
    }
    out.print(100 + " = " + sum);
%><hr/>

단순한 문자열 출력: <%= "<b>표현식 예제</b>"%><br>
단순한 문자열 출력: <b>표현식 예제</b>
<hr/>
<%
    int i = 10;
    java.util.Calendar cal = java.util.Calendar.getInstance();
%>
변수 i 출력: <%= i%><hr/>
수식을 이용한 값 출력 (1~10까지의 합): <%= 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 %><hr/>
메소드 호출을 통한 값 출력: <%= cal.getTime() %><hr/>
변수 i를 사용하여 변수와 문자열의 연산 결과: <%= "i + 10 = " + (i + 10) %><hr/>
탭 (/t) 출력: <%= "\tabcd\t\tefghijk\tlmn" %><hr/>
탭 (/t) 출력: <%= "&nbsp;가나다라&nbsp;&nbsp;마바사아&nbsp;&nbsp;&nbsp;&nbsp;자차카타" %><hr/>
변수 선언 및 초기화 후 변수의 초기값 출력<br>
<%
    int a = 1;
    int b = 2;
%>
a: <%= a%>, b: <%= b%>

</body>
</html>
