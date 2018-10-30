import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Map<String, String[]> parameters = request.getParameterMap();
        ServletContext context = request.getServletContext();


        if (parameters.containsKey("X") &&
                parameters.containsKey("Y") &&
                parameters.containsKey("R")) {

                context.getRequestDispatcher("/areaCheck").forward(request, response);
            return;
        }

        context.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
