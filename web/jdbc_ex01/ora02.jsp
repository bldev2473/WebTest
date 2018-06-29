<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        String deptNo = request.getParameter("dept_no");
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:59162:XE";
        String sql = "select * from DEPT where DEPTNO =" + deptNo;
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "scott", "tiger");
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
        if (rs.next()) {
            String deptName = rs.getString("dname");
            String deptLoc = rs.getString(3);
            out.println("부서코드: " + deptNo + "<br>");
            out.println("부서명: " + deptName + "<br>");
            out.println("근무지: " + deptLoc + "<br>");
        } else {
            out.println("없음");
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
