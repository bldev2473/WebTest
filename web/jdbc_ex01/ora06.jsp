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
        String deptName = request.getParameter("dept_name");
        String deptLoc = request.getParameter("dept_loc");
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:59162:XE";
        String sql = String.format("insert into DEPT values (%s, '%s', '%s')", deptNo, deptName, deptLoc);
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "scott", "tiger");
        stmt = conn.createStatement();
        int result = stmt.executeUpdate(sql);
        if (result > 0) out.println("입력 성공");
        else out.println("입력 실패");
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