package MVC2.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.server.ServerCloneException;

public interface CommandProcess {
    String requestPro(HttpServletRequest request, HttpServletResponse response) throws ServerCloneException, IOException;
}