<%@ tag language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="num1" type="java.lang.Integer" required="true" %>
<%@ attribute name="num2" type="java.lang.Integer" required="true" %>
<%@ variable name-given="maximum" scope="AT_END" variable-class="java.lang.Integer" %>
<%
    int result;
    if (num1 >= num2) result = num1;
    else result = num2;
%>
<c:set var="maximum" value="<%=result%>"/>