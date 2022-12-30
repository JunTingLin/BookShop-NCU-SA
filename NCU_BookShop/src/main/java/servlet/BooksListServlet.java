package servlet;

import model.Books;
import model.Type;
import service.BooksService;
import service.TypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "books_List",urlPatterns = "/books_list")
public class BooksListServlet extends HttpServlet {
    private BooksService bService=new BooksService();
    private TypeService tService=new TypeService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=0;
        if(request.getParameter("typeid")!=null)
        {
            id=Integer.parseInt(request.getParameter("typeid"));
        }

        Type t=null;
        if(id!=0)
        {
            t=tService.selectTypeNameByID(id);
        }
        request.setAttribute("t",t);

        List<Books> list=bService.selectBooksByTypeID(id);

        request.setAttribute("list",list);
//        request.setAttribute("id",String.valueOf(id));
        request.getRequestDispatcher("/books_list.jsp").forward(request,response);
    }
}
