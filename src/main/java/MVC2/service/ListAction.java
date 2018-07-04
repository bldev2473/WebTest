package MVC2.service;

import MVC2.dao.BoardDAO;
import MVC2.dao.BoardDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.util.List;

public class ListAction implements CommandProcess {
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws ServerCloneException, IOException {
        BoardDAO bd = BoardDAO.getInstance();
        try {
            int totCnt = bd.getTotalCnt();
            String pageNum = request.getParameter("pageNum");
            if (pageNum == null || pageNum.equals("")) {
                pageNum = "1";
            }
            int currentPage = Integer.parseInt(pageNum);
            int pageSize = 10, blockSize = 10;
            int startRow = (currentPage - 1) * pageSize + 1; // 시작 시 (1 - 1) * 10 + 1 = 1
            int endRow = startRow + pageSize - 1; // 시작 시 1 + 10 - 1 = 10
            int startNum = totCnt - startRow + 1; // 시작 시 38 - 1 + 1 = 38
            List<BoardDTO> list = bd.list(startRow, endRow); // 시작 시 1, 10
            int pageCnt = (int)Math.ceil((double)totCnt/pageSize); // 시작 시 (38/10) = 3.8 = 4
            int startPage = (int)(currentPage - 1)/blockSize * blockSize + 1; // 시작 시 1
            int endPage = startPage + blockSize - 1; // 시작 시 10
            if(endPage > pageCnt) endPage = pageCnt;
            request.setAttribute("totCnt", totCnt);
            request.setAttribute("pageNum", pageNum);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("startNum", startNum);
            request.setAttribute("list", list);
            request.setAttribute("blockSize", blockSize);
            request.setAttribute("pageCnt", pageCnt);
            request.setAttribute("startPage", startPage);
            request.setAttribute("endPage", endPage);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list.jsp";
    }
}
