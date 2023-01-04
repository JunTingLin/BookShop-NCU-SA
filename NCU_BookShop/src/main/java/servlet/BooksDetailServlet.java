package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/BooksDetailServlet.java
import com.NCU.BookShop.model.Books;
import com.NCU.BookShop.service.BooksService;
========
import model.Books;
import service.BooksService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/BooksDetailServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "books_detail",urlPatterns = "/books_detail")
public class BooksDetailServlet extends HttpServlet {

    private BooksService bService = new BooksService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Books b = bService.getBooksById(id);
        request.setAttribute("b", b);
        request.getRequestDispatcher("/books_detail.jsp").forward(request, response);
    }
}
