package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/AdminOrderListServlet.java
import com.NCU.BookShop.model.Order;
import com.NCU.BookShop.service.OrderService;
========
import model.Order;
import service.OrderService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/AdminOrderListServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admin_order_list",urlPatterns = "/admin/order_list")
public class AdminOrderListServlet extends HttpServlet {
    private OrderService oService = new OrderService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int status = 0;
        if(request.getParameter("status") != null) {
            status=Integer.parseInt(request.getParameter("status") ) ;
        }
        request.setAttribute("status", status);

        List<Order> list = oService.getOrderList(status);


        request.setAttribute("list", list);
        request.getRequestDispatcher("/admin/order_list.jsp").forward(request, response);
    }
}
