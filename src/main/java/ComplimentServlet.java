import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/compliments")
public class ComplimentServlet extends HttpServlet {


    List<Compliment> compliments = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");


        String compliment = req.getParameter("compliment");

        String title = "<h1>Leave Ryan a nice compliment</h1>";

        String commentBox = "<form method=\"POST\" action=\"/compliments\">\n" +
                "    <label for=\"name\">Name</label>\n" +
                "    <input id=\"name\" name=\"name\" placeholder=\"Enter your name here\" />\n" +
                "<label for=\"compliment\">Compliment</label>\n" +
                "<input id=\"compliment\" name=\"compliment\" placeholder=\"Enter your nice compliment\" />\n" +
                "<input type=\"submit\" value=\"Submit\">" +
                "</form>";

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();



        out.println(title);

        out.println(commentBox);

        Compliment newCompliment = new Compliment(name, compliment);

    } //doGet()

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, java.io.IOException {

    }


} //ComplimentServlet()
