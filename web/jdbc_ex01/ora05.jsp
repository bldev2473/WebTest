<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%@ page import="DTO.EmpDTO" %>
<%@ page import="java.util.ArrayList" %>
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
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:59162:XE";
        String sql = "select EMPNO, ENAME, JOB, MGR, HIREDATE, SAL from EMP";
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "scott", "tiger");
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
        ArrayList<EmpDTO> al = new ArrayList<>();
        if (rs.next()) {
            do {
                EmpDTO edto = new EmpDTO();
                edto.setEmpNo(rs.getInt(1));
                edto.setEmpName(rs.getString(2));
                edto.setJob(rs.getString(3));
                edto.setMgr(rs.getInt(4));
                edto.setHireDate(rs.getDate(5));
                edto.setSal(rs.getInt(6));
                al.add(edto);
            } while (rs.next());
            request.setAttribute("al", al);
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
//    RequestDispatcher rd = request.getRequestDispatcher("ora05_result1.jsp");
    RequestDispatcher rd = request.getRequestDispatcher("ora05_result2.jsp");
    rd.forward(request, response);
%>
</body>
</html>
