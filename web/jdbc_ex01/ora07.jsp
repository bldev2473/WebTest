<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    try {
        request.setCharacterEncoding("utf-8");
        String deptNo = request.getParameter("dept_no");
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:59162:XE";
        String sql = String.format("select * from DEPT where deptno = %s", deptNo);
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "scott", "tiger");
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.next()) {
            request.setAttribute("dept_no", deptNo);
            request.setAttribute("dept_name", rs.getString(2));
            request.setAttribute("dept_loc", rs.getString(3));
        }
        RequestDispatcher rd = request.getRequestDispatcher("ora07_result1.jsp");
        rd.forward(request, response);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>