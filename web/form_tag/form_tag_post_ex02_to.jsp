<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% String[] cbArr = request.getParameterValues("cb");
    for (int i = 0; i < cbArr.length; i++) {
        out.print(cbArr[i] + "<br>");
    }

    Enumeration enums = request.getParameterNames();
    while (enums.hasMoreElements()) {
        String name = (String) enums.nextElement();
        for (int i = 1; i <= 5; i++) {
            if (name.equals("cb" + i)) {
                out.print(request.getParameter(name) + "<br>");
            }
        }
    }

    String rbStr = request.getParameter("rb");
    out.print(rbStr);
%>
</body>
</html>
