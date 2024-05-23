
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;


@WebServlet(urlPatterns = {"/SearchWordServlet"})
public class SearchWordServlet extends HttpServlet {
    private static final String ENCODING_UTF_8 = "UTF-8";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String word = request.getParameter("word");

        int count = searchWordInFile(word, "C:\\Users\\Kasie1\\IdeaProjects\\OOPSERVLET_LAB1\\src\\main\\webapp\\text.txt");

        request.setAttribute("word", word);
        request.setAttribute("count", count);

        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }

    private int searchWordInFile(String word, String filename) throws IOException {
        int count = 0;

        try (BufferedReader br = new BufferedReader(new FileReader(filename))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] words = line.split(" ");
                for (String w : words) {
                    if (w.equals(word)) {
                        count++;
                    }
                }
            }
        }

        return count;
    }
}
