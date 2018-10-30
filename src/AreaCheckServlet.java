
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.LinkedList;
import java.util.Map;

public class AreaCheckServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        Map<String, String[]> parameters = request.getParameterMap();

        float x, y, r;
        String replay;
        //Возможно перенаправление запроса к другому сервлету?

        //Нужна ли повторная валидация?
        //if (parameters.containsKey("X")&&){}

        Result result = new Result(1, 2, 3, "a");
        addResult(request, result);
    }

    private void addResult(HttpServletRequest request, Result result) {
        HttpSession session = request.getSession(true);

        String name = "ListOfResultAttributes";

        if (session.getAttribute(name) == null) {
            session.setAttribute(name, new LinkedList<Result>());
        }

        LinkedList<Result> listResult = (LinkedList<Result>) session.getAttribute(name);
        listResult.add(result);
        session.setAttribute(name, listResult);
    }
}
