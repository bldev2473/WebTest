<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 7.
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="form_tag_test3_action_page.jsp" method="post">
    <table border="1">
        <tr>
            <td>
                <select name="select1">
                    <option selected>option1</option>
                    <option>option2</option>
                    <option>option3</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <select name="select2" size="3">
                    <option selected>option4</option>
                    <option>option5</option>
                    <option>option6</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <select name="select3" size="4" multiple>
                    <option selected>option7</option>
                    <option>option8</option>
                    <option selected>option9</option>
                </select>
            </td>
        </tr>
    </table>
    <input type="submit" value="전송" name="submit_btn">
    <input type="reset" value="초기화" name="reset_btn">
</form>
</body>
</html>
