package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/AdminDepartmentEditServlet.java
import com.NCU.BookShop.model.Department;
import com.NCU.BookShop.service.DepartmentService;
import org.apache.commons.beanutils.BeanUtils;
========
import model.Department;
import org.apache.commons.beanutils.BeanUtils;
import service.DepartmentService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/AdminDepartmentEditServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin_department_edit",urlPatterns = "/admin/department_edit")
public class AdminDepartmentEditServlet extends HttpServlet {
    private DepartmentService depService = new DepartmentService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Department t = new Department();
        try {
            BeanUtils.copyProperties(t, request.getParameterMap());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        depService.update(t);
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
