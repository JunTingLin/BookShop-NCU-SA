package servlet;

import model.Page;
import model.Type;
import service.BooksService;
import service.TypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
        int pageNumber=1;
        if(request.getParameter("pageNumber")!=null) {
            try {
                pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
            }
            catch (Exception e)
            {

            }

        }
        Type t=null;
        if(id!=0)
        {
            t=tService.selectTypeNameByID(id);
        }
        request.setAttribute("t",t);
        //List<Books> list=bService.selectBooksByTypeID(id,1,8);
        //request.setAttribute("booksList",list);
        if(pageNumber<=0)
            pageNumber=1;
        Page p=bService.selectPageByTypeID(id,pageNumber);

        if(p.getTotalPage()==0)
        {
            p.setTotalPage(1);
            p.setPageNumber(1);
        }
        else {
            if(pageNumber>=p.getTotalPage()+1)
            {
                p=bService.selectPageByTypeID(id,p.getTotalPage());
            }
        }

        request.setAttribute("p",p);
        request.setAttribute("id",String.valueOf(id));
        request.getRequestDispatcher("/books_list.jsp").forward(request,response);
    }
}
