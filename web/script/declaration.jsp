<%--
  Created by IntelliJ IDEA.
  User: bldev
  Date: 2018. 6. 4.
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String str = "Declaration Test";
    public double calculator(double num1, double num2, String operator){
        double result = 0.0;
        if(operator.equals("+")){
            result = num1 + num2;
        } else if (operator.equals("-")){
            result = num1 - num2;
        } else if (operator.equals("*")){
            result = num1 * num2;
        } else if (operator.equals("/")){
            result = num1 / num2;
        }
        return result;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%= str %> <hr/>
5 + 2 = <%= calculator(5, 2, "+") %><br>
5 - 2 = <%= calculator(5, 2, "-") %><br>
5 * 2 = <%= calculator(5, 2, "*") %><br>
5 / 2 = <%= calculator(5, 2, "/") %><br>
</body>
</html>

