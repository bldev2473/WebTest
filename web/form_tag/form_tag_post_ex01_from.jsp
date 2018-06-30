<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
from.jsp
<form action="form_tag_post_ex01_to.jsp" method="post">
    ID: <input type="text" name="id"><br>
    PW: <input type="password" name="pw"><br>
    자기소개<br>
    <textarea name="desc" cols="50" rows="4"></textarea><br>
    <center>
        <input type="submit" value="전송" name="submit_btn">
        <input type="reset" value="초기화" name="reset_btn">
    </center>
</form>
</body>
</html>
