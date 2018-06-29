<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 7.
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="form_tag_test2_action_page.jsp" method="post" name="form">
    <table border="1">
        <tr>
            <td>Checkbox with same value of name attribute</td>
            <td>
                <input type="checkbox" name="cb" value="cb1_1" checked>cb1_1<br>
                <input type="checkbox" name="cb" value="cb1_2">cb1_2<br>
                <input type="checkbox" name="cb" value="cb1_3">cb1_3<br>
                <input type="checkbox" name="cb" value="cb1_4">cb1_4<br>
                <input type="checkbox" name="cb" value="cb1_5">cb1_5<br>
                <!-- cb[] = {"a", "b", "c", "d", "e"}; -->
            </td>
            <br>
        </tr>
        <tr>
            <td>Checkbox with different value of name attribute</td>
            <td>
                <input type="checkbox" name="cb1" value="cb2_1" checked>cb2_1<br>
                <input type="checkbox" name="cb2" value="cb2_2">cb2_2<br>
                <input type="checkbox" name="cb3" value="cb2_3">cb2_3<br>
                <input type="checkbox" name="cb4" value="cb2_4">cb2_4<br>
                <input type="checkbox" name="cb5" value="cb2_5">cb2_5<br>
                <!-- cb[] = {"a", "b", "c", "d", "e"}; -->
            </td>
            <br>
        </tr>
        <tr>
            <td>Radio Button</td>
            <td>
                <input type="radio" name="rb" value="rb1" checked>rb1<br>
                <input type="radio" name="rb" value="rb2">rb2<br>
                <input type="radio" name="rb" value="rb3">rb3<br>
                <input type="radio" name="rb" value="rb4">rb4<br>
                <input type="radio" name="rb" value="rb5">rb5<br>
            </td>
            <br>
        </tr>
    </table>
    <input type="submit" value="전송" name="submit_btn">
    <input type="reset" value="초기화" name="reset_btn">
</form>
</body>
</html>
