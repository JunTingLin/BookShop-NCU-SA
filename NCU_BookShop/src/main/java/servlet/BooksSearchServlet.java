package servlet;

import model.Page;
import service.BooksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(name = "books_search",urlPatterns = "/books_search")
public class BooksSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private BooksService bService = new BooksService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        int pageNumber = 1;
        if(request.getParameter("pageNumber") != null) {
            try {
                pageNumber=Integer.parseInt(request.getParameter("pageNumber") ) ;
            }
            catch (Exception e)
            {

            }
        }
        if(pageNumber<=0)
        {
            pageNumber=1;
        }
        Page p =bService.getSearchBooksPage(keyword,pageNumber);

        if(p.getTotalPage()==0)
        {
            p.setTotalPage(1);
            p.setPageNumber(1);
        }
        else {
            if(pageNumber>=p.getTotalPage()+1)
            {
                p =bService.getSearchBooksPage(keyword,pageNumber);
            }
        }
        request.setAttribute("p", p);
        request.setAttribute("keyword", URLEncoder.encode(keyword,"utf-8"));
        request.getRequestDispatcher("/books_search.jsp").forward(request, response);
    }

}
