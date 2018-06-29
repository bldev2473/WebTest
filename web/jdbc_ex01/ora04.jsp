<%@ page import="java.sql.*" %>
<%@ page import="DTO.DeptDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="db_error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String deptNo = request.getParameter("dept_no");
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:59162:XE";
    String sql = "select * from DEPT where DEPTNO =" + deptNo;
    Class.forName(driver);
    Connection conn = DriverManager.getConnection(url, "scott", "tiger");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    DeptDTO ddto = new DeptDTO();
    if (rs.next()) {
        ddto.setDeptNo(rs.getInt(1));
        ddto.setDeptName(rs.getString(2));
        ddto.setDeptLoc(rs.getString(3));
        request.setAttribute("dept_dto", ddto);
    } else {
        out.println("없음");
    }
    rs.close();
    stmt.close();
    conn.close();
    RequestDispatcher rd = request.getRequestDispatcher("ora04_result.jsp");
    rd.forward(request, response);
%>
</body>
</html>
