package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.Books;
import com.NCU.BookShop.service.BooksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "bookrecommendList",urlPatterns = "/booksrecommend_list")
public class BookRecommendListServlet extends HttpServlet {
    private BooksService bService = new BooksService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int type = Integer.parseInt(request.getParameter("type") ) ;

        List<Books> list=bService.getBooksRecommend(type);

        request.setAttribute("list", list);
        request.setAttribute("t", type);
        request.getRequestDispatcher("booksrecommend_list.jsp").forward(request, response);
    }
}