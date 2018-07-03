import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "GetAndPostEx01Servlet", urlPatterns = "/GetAndPostEx01Servlet")
public class GetAndPostEx01Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("num"));
        int sum = 0;
        for (int i = 0; i <= num; i++) {
            sum += i;
        }
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter(); // printwriter = 파일을 만드는 객체 servlet에서는 화면에 뿌려줄때 사용한다.
        out.println("<html><body>"); // add3 out.print 는 web browser 에서 출력된다.
        out.printf("<h1>1부터 %d까지의 합계</h1>", num);
        out.println(sum);
        out.println("</body></html>");
        out.close();
    }
}
