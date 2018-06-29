<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:catch var="e1">
    <%
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
    %>
    나눗셈 결과: <%= (double) num1/num2 %>
</c:catch>
<c:if test="${e1!=null}"> <!-- 에러가 있으면 에러 메시지를 출력 -->
    에러 메시지: ${e1.message}
</c:if>
</body>
</html>
