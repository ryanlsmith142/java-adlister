import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/counter")
public class PageCounterServlet extends HttpServlet {

    int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String reset = req.getParameter("reset");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        out.println("Counter = " + counter);

        counter++;


        if(reset.equalsIgnoreCase("reset")) {
            counter = 0;
        }
    }


}