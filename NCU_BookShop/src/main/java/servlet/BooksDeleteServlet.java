package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/BooksLessenServlet.java
@WebServlet(name = "books_lessen",urlPatterns = "/books_lessen")
public class BooksLessenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = (Order) request.getSession().getAttribute("order");
        int booksid = Integer.parseInt(request.getParameter("booksid"));
        o.lessen(booksid);
========
@WebServlet(name = "books_delete",urlPatterns = "/books_delete")
public class BooksDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = (Order) request.getSession().getAttribute("order");
        int booksid = Integer.parseInt(request.getParameter("booksid"));
        o.delete(booksid);
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/BooksDeleteServlet.java
        response.getWriter().print("ok");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
