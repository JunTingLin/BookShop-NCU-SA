package servlet;

import model.Books;
import service.BooksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admin_books_list",urlPatterns = "/admin/books_list")

public class AdminBooksListServlet extends HttpServlet {
    
    private BooksService bService= new BooksService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int type = 0;//推薦類型
        if(request.getParameter("type") != null) {
            type=Integer.parseInt(request.getParameter("type") ) ;
        }

        List<Books> list = bService.getBooksRecommend(type);

        request.setAttribute("list", list);
        request.setAttribute("type", type);
        request.getRequestDispatcher("/admin/books_list.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }


}
