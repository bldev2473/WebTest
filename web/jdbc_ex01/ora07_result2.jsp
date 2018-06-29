<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
        request.setCharacterEncoding("utf-8");
        int deptNo = Integer.parseInt(request.getParameter("dept_no"));
        String deptName = request.getParameter("dept_name");
        String deptLoc = request.getParameter("dept_loc");
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:59162:XE";
        String sql = "update DEPT set dname = ?, loc = ? where deptno = ?";
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "scott", "tiger");
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, deptName);
        pstmt.setString(2, deptLoc);
        pstmt.setInt(3, deptNo);
        int result = pstmt.executeUpdate();
        if (result > 0) out.println("수정 성공");
        else out.println("수정 실패");
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>