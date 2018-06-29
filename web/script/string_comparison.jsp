<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 5.
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
문자열 비교1<br>
String str1 = "ABC"<br>
String str2 = "ABC"<br>
String str3 = "BCD"<br>
<%
    String str1 = "ABC";
    String str2 = "ABC";
    String str3 = "BCD";
%>
str1 == str2: <%= str1 == str2 %><br>
str1 == str3: <%= str1 == str3 %><br>
str1.equals(str2): <%= str1.equals(str2) %><br>
str1.equals(str3): <%= str1.equals(str3) %><br>
<hr>
문자열 비교2<br>
String str4 = new String("가나다");<br>
String str5 = new String("가나다");<br>
String str6 = new String("나다라");<br>
<%
    String str4 = new String("가나다");
    String str5 = new String("가나다");
    String str6 = new String("나다라");
%>
str4 == str5: <%= str4 == str5 %><br>
str4 == str6: <%= str4 == str6 %><br>
str4.equals(str5): <%= str4.equals(str5) %><br>
str4.equals(str6): <%= str4.equals(str6) %><br>
<hr>
문자열 메소드<br>
(1) 문자열 길이<br>
String str7 = "abcdefg";<br>
<%
    String str7 = "abcdefg";
%>
str7.length(): <%= str7.length() %><br>
(2) 인덱스에 해당하는 문자열 반환<br>
str7.charAt(3): <%= str7.charAt(3) %><br>
(3) 해당 문자열의 인덱스 반환<br>
str7.indexOf("f"): <%= str7.indexOf("f") %><br>
str7.indexOf("defg"): <%= str7.indexOf("defg") %><br>
(4) 인덱스 다음 위치의 문자열 출력<br>
str7.substring(4): <%= str7.substring(4) %><br>

</body>
</html>
