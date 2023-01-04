package com.NCU.BookShop.servlet;

import com.NCU.BookShop.service.BooksService;
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
import java.util.Map;

@WebServlet(name = "IndexServlet",urlPatterns = "/index")
@Controller
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Autowired
    private BooksService bService;
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

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                config.getServletContext());
    }
}
