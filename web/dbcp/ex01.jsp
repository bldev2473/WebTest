<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="DTO.EmpDTO" %>
<%@ page import="javax.naming.NamingException" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    Context ctx = null;
    try {
        request.setCharacterEncoding("utf-8");
        String empNo = request.getParameter("emp_no");
        String driver = "oracle.jdbc.driver.OracleDriver";
        String sql = "select EMPNO, ENAME, SAL, HIREDATE from EMP where EMPNO = " + empNo;
        ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
        conn = ds.getConnection();
        Class.forName(driver);
        pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery(sql);
        EmpDTO edto = new EmpDTO();
        if (rs.next()) {
            edto.setEmpNo(rs.getInt(1));
            edto.setEmpName(rs.getString(2));
            edto.setSal(rs.getInt(3));
            edto.setHireDate(rs.getDate(4));
            request.setAttribute("emp", edto);
        }
        RequestDispatcher rd = request.getRequestDispatcher("ex01_result.jsp");
        rd.forward(request, response);
    } catch (ClassNotFoundException | SQLException | NamingException | NullPointerException e) {
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