package servlet;

import model.Books;
import model.Order;
import service.BooksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "books_buy",urlPatterns = "/books_buy")

public class BooksBuyServlet extends HttpServlet {
    
    private BooksService bService = new BooksService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = null;
        if(request.getSession().getAttribute("order") != null) {
            o = (Order) request.getSession().getAttribute("order");
        }else {
            o = new Order();
            request.getSession().setAttribute("order", o);
        }
        int booksid = Integer.parseInt(request.getParameter("booksid"));
        Books books = bService.getBooksById(booksid);

        if(books.getStock()>0 && ! o.getItemMap().containsKey(booksid)) {  //庫存>0 且 order裡面的itemMap沒有過該商品
            o.addBooks(books);
            response.getWriter().print("ok");
        } else if (books.getStock()>0 && o.getItemMap().get(booksid).getAmount() < books.getStock()) {  //庫存>0 且 該商品加到購物車的數量<庫存，才能在繼續加(買)
            o.addBooks(books);
            response.getWriter().print("ok");
        } else {
            response.getWriter().print("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
