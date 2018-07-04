package MVC2.control;

import MVC2.service.CommandProcess;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

@WebServlet(name = "Controller", urlPatterns = "/Controller")
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Map<String, Object> commandMap = new HashMap<String, Object>(); // Key(List.do)와 Value(클래스의 인스턴스)를 저장할 Map

    public void init(ServletConfig config) throws ServletException {
        // ServletConfig 객체 = command.properties
        // web.xml에서 propertyConfig에 해당하는 init-param의 값을 읽어옴
        // web.xml에서 설정한 파라미터 명(config)으로 파라미터 값을 얻어서 문자열에 저장
        // web.xml에서 <param-name>에 설정한 config를 찾음 --> 해당 파라미터 명에 해당하는 파라미터 값(/WEB-INF/command.properties)을 가져옴
        String props = config.getInitParameter("config");
        // props는 command.properties가 저장된 경로(/WEB-INF/command.properties)
        System.out.println(props);
        // 명령어와 처리 클래스의 매핑 정보를 저장할 Properties 객체 생성
        // 명령어 : list.do
        // 처리 클래스 : service.ListAction
        Properties pr = new Properties();
        FileInputStream f = null;
        try {
            String configFilePath = config.getServletContext().getRealPath(props);
            f = new FileInputStream(configFilePath);
            // command.properties 파일의 정보를 Properties 객체에 저장
            // command.properties에 있는 문자들을 파일 입력 스트림을 통해 읽어서 Properties 객체에 저장 (메모리에 저장)
            pr.load(f);
        } catch (IOException e) {
            throw new ServletException(e);
        } finally {
            if (f != null) try {
                f.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        // Iterator 객체 : Enumeration 객체를 확장시킨 개념의 객체
        // command.properties에 있는 데이터를 Properties 객체에 저장한 후 Properties 객체에 저장된 Key와 Value 값을 얻어옴
        // command.properties에 있는 내용들을 한 행씩 읽기 위해 Iterator 객체 사용
        // Property 객체에서 list.do를 Key로, service.ListAction을 Value로 하여 읽어옴
        Iterator keyIter = pr.keySet().iterator();
        // 객체를 하나씩 꺼내서 그 객체명으로 Properties 객체에 저장된 객체에 접근
        while (keyIter.hasNext()) {
            String command = (String) keyIter.next();   // Key : "/list.do"
            String className = pr.getProperty(command); // Value : "service.ListAction"
            try {
                // Class.forName() : 문자열을 클래스 타입으로 만들어줌
                // newInstance() : 해당 클래스의 객체 생성
                Class commandClass = Class.forName(className);          // 해당 문자열을 클래스로 만들어줌
                Object commandInstance = commandClass.newInstance();    // 해당 클래스의 객체를 생성
                // 위 두 줄은 new 연산자를 이용하여 객체를 생성한 것과 동일함 (new 클래스명)
                // ListAction la = new ListAction(); 코드와 동일하지만 확장성과 유연성을 위해 변경되는 문자열 데이터에 따라 해당 인스턴스를 생성하기 위해 위 코드를 사용함
                commandMap.put(command, commandInstance);   // Map 객체인 commandMap에 객체 저장
                // 파일은 계속 변할 수 있으므로 확장성을 위해 위와 같은 구조를 사용함
                // 결국 init() 메소드에서 수행하는 것은 command.properties 파일에 있는 정보를 commandMap 객체에 Key, Value로 저장하는 것
                // 후에 requestPro() 메소드를 호출하면 commandMap 객체에 저장된 Key, Value 데이터를 사용하여 요청을 처리함
            } catch (Exception e) {
                throw new ServletException(e);
            }
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        requestPro(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        requestPro(request, response);
    }

    // 시용자의 요청을 분석해서 해당 작업을 처리
    private void requestPro(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String view = null;
        CommandProcess com = null;
        try {
            // URI를 받아서 문자열로 저장
            String command = request.getRequestURI();
            System.out.println(command);  // "/ch16/list.do"
            System.out.println(request.getContextPath()); // "/ch16"
            System.out.println(command.indexOf(request.getContextPath()));  // 0
            // if (command.indexOf(request.getContextPath()) == 0) {
            command = command.substring(request.getContextPath().length());
            //  }
            System.out.println("command: " + command);  // "/list.do"
            // com = service.ListAction 객체
            com = (CommandProcess) commandMap.get(command); // 클래스의 인스턴스를 인터페이스 형으로 형변환
            System.out.println("com: " + com);  // "service.ListAction@"
            view = com.requestPro(request, response); // ListAction 클래스의 requestPro() 메소드가 실행됨
            System.out.println("view: " + view);    // "list.jsp"
        } catch (Throwable e) {
            throw new ServletException(e);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(view); // list.jsp로 이동
        dispatcher.forward(request, response);
    }
}