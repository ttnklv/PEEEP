
import result.Result;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;


public class AreaCheckServlet extends HttpServlet {

    PrintWriter out;
    HttpSession session;
    String name;
    LinkedList<Result> listResult;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //String parameters = request.getParameter();

        response.setContentType("text/html");
        out = response.getWriter();


        double x, y, r;
        String replay;

        x = Double.valueOf(request.getParameter("X"));
        y = Double.valueOf(request.getParameter("Y"));
        r = Double.valueOf(request.getParameter("R"));


        if (request.getParameter("Y").contains(",")) {
            y = Double.parseDouble(request.getParameter("Y").replace(",", "."));
        } else {
            y = Double.parseDouble(request.getParameter("Y"));
        }

        String answer;
        if (areaCheck(x, y, r)) answer = "hit"; //"попадание";
        else answer = "missed";

        if (!(r == 1 || r == 2.0 || r == 3 || r == 4 || r == 5)) {
            answer = "incorrectly";
        }

//        if (!( x == -1 || x == -2 || x == -3 || x == -4||x== 0 || x == 1 || x == 2 || x == 3 || x == 4)) {
//            answer = "не корректные данные";
//        }

        Result result = new Result(x, y, r, answer);
        addResult(request, result);

//        String json = new Gson().toJson(listResult);

//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");

//        response.getWriter().write(json);

        drawAnswer(answer);
    }

    private void addResult(HttpServletRequest request, Result result) {
        session = request.getSession();
        name = "ListOfResultAttributes";

        if (session.getAttribute(name) == null) {
            session.setAttribute(name, new LinkedList<Result>());
        }

        listResult = (LinkedList<Result>) session.getAttribute(name);
        listResult.add(result);

    }

    private boolean areaCheck(double x, double y, double r) {
        boolean[] flag = {false, false, false};

        if ((x * x + y * y <= r * r) && (x >= 0 && x <= r) && (y >= 0 && y <= r)) {
            flag[0] = true;
        }
        if ((y <= (-2 * x + r)) && (x >= -r / 2 && x <= 0) && (y >= 0 && y <= r)) {
            flag[1] = true;
        }
        if ((x <= r && x >= 0) && (y >= -r && y <= r)) {
            flag[2] = true;
        }

        return flag[0] || flag[1] || flag[2];
    }

    private void drawAnswer(String x) {


        LinkedList<Result> listResult = (LinkedList<Result>) session.getAttribute(name);
//        result.Result result = listResult.get(0);


//        if (answer) out.print("попадание");
//        else out.print("не попадание");
        out.print("<html> <!DOCTYPE HTML> <html> <head> <meta charset='UTF-8'> " +
                "<title>Points</title>" +" <style type=\"text/css\">\n" +
                        "   TABLE {\n" +
                        "    background: maroon; /* Цвет фона таблицы */\n" +
                        "    color: white; /* Цвет текста */\n" +
                        "   }\n" +
                        "   TD {\n" +
                        "    background: navy; /* Цвет фона ячеек */\n" +
                        "   }\n" +
                        "  </style>"+
                "</head><body>");

        out.write("<table><tr><th>X</th><th>Y</th><th>R</th><th>result</th></tr>");

        for (Result aListResult : listResult) {
            out.write("<tr>");
            out.println("<td>");
            out.println(aListResult.x);
            out.println("</td>");
            out.println("<td>");
            out.println(aListResult.y);
            out.println("</td>");
            out.println("<td>");
            out.println(aListResult.r);
            out.println("</td>");
            out.println("<td>");
            out.println(aListResult.result);
            out.println("</td>");
            out.write("</tr>");
        }

        out.write("</table></body></html>");
    }


}
