package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/AdminBooksRecommendServlet.java
import com.NCU.BookShop.service.BooksService;
========
import service.BooksService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/AdminBooksRecommendServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin_books_recommend",urlPatterns = "/admin/books_recommend")
public class AdminBooksRecommendServlet extends HttpServlet {
    private BooksService bService = new BooksService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String method = request.getParameter("method");
        int typeTarget=Integer.parseInt(request.getParameter("typeTarget"));
        if(method.equals("add")) {
            bService.addRecommend(id, typeTarget);
        }else {
            bService.removeRecommend(id, typeTarget);
        }
        request.getRequestDispatcher("/admin/books_list").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
