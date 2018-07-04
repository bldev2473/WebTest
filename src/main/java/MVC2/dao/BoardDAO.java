package MVC2.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
    // Singleton
    private static BoardDAO instance;

    private BoardDAO() {

    }

    public static BoardDAO getInstance() {
        if (instance == null) {
            instance = new BoardDAO();
        }
        return instance;
    }

    // Connection Pool (리소스 절약)
    private Connection getConnection() {
        Connection conn = null;
        try {
            Context ctx = new InitialContext();
            DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public int getTotalCnt() throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int tot = 0;
        try {
            conn = getConnection();
            String sql = "select count(*) from BOARD";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                tot = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return tot;
    }

    public List<BoardDTO> list(int startRow, int endRow) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<BoardDTO> list = new ArrayList<BoardDTO>();
        try {
            conn = getConnection();
            String sql = "select * from (select ROWNUM rn, a.* from (select * from BOARD order by ref desc, re_step) a) where rn between ? and ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, startRow);
            pstmt.setInt(2, endRow);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                BoardDTO bdto = new BoardDTO();
                bdto.setNum(rs.getInt(2));
                bdto.setWriter(rs.getString(3));
                bdto.setSubject(rs.getString(4));
                bdto.setContent(rs.getString(5));
                bdto.setEmail(rs.getString(6));
                bdto.setReadCount(rs.getInt(7));
                list.add(bdto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return list;
    }
}
