package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.Books;
import com.NCU.BookShop.model.Department;
import com.NCU.BookShop.service.BooksService;
import com.NCU.BookShop.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "books_List",urlPatterns = "/books_list")
@Controller
public class BooksListServlet extends HttpServlet {
    @Autowired
    private BooksService bService;
    @Autowired
    private DepartmentService depService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=0;
        if(request.getParameter("departmentid")!=null)
        {
            id=Integer.parseInt(request.getParameter("departmentid"));
        }

        Department department =null;
        if(id!=0)
        {
            department=depService.selectDepartmentNameByID(id);
        }
        request.setAttribute("dep",department);

        List<Books> list=bService.selectBooksByDepartmentID(id);

        request.setAttribute("list",list);
//        request.setAttribute("id",String.valueOf(id));
        request.getRequestDispatcher("/books_list.jsp").forward(request,response);
    }

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                config.getServletContext());
    }
}
