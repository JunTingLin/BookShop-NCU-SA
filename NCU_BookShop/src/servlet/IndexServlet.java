package servlet;

import service.BooksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "IndexServlet",urlPatterns = "/index")

public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    
    private BooksService bService = new BooksService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String,Object> ScrollBook=bService.getScrollBook();
//        request.setAttribute("scroll",ScrollBook);

        List<Map<String,Object>>scrollList=bService.getBooksList(1);
        System.out.println("這是key集合"+scrollList.get(0).keySet());
        System.out.println("這是values"+scrollList.get(0).values());
        request.setAttribute("scrollList",scrollList);

        List<Map<String,Object>>newList=bService.getBooksList(2);
        request.setAttribute("newList",newList);

        request.getRequestDispatcher("index.jsp").forward(request,response);


    }


}
