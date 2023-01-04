package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "books_delete",urlPatterns = "/books_delete")
public class BooksDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = (Order) request.getSession().getAttribute("order");
        int booksid = Integer.parseInt(request.getParameter("booksid"));
        o.delete(booksid);
        response.getWriter().print("ok");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}