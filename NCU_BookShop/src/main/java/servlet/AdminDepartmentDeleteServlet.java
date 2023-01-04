package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/AdminDepartmentDeleteServlet.java
import com.NCU.BookShop.service.DepartmentService;
========
import service.DepartmentService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/AdminDepartmentDeleteServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin_department_delete",urlPatterns = "/admin/department_delete")
public class AdminDepartmentDeleteServlet extends HttpServlet {
    private DepartmentService depService = new DepartmentService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean isSuccess = depService.delete(id);
        if(isSuccess) {
            request.setAttribute("msg", "刪除成功");
        }else {
            request.setAttribute("failMsg", "類別下包含商品，無法直接刪除類別！");
        }
        request.getRequestDispatcher("/admin/department_list").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
