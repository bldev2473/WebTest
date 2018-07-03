import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet(name = "GetAndPostEx03Servlet", urlPatterns = "/GetAndPostEx03Servlet")
public class GetAndPostEx03Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("num"));
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        out.print("<h1>구구단 " + num + "단</h1>");
        for (int i = 1; i <= 9; i++) {
            out.printf("%d * %d = %d<br>", num, i, (num * i));
        }
        out.print("</body></html>");
        out.close();
    }
}
