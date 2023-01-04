package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/AdminDepartmentListServlet.java
import com.NCU.BookShop.model.Department;
import com.NCU.BookShop.service.DepartmentService;
========
import model.Department;
import service.DepartmentService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/AdminDepartmentListServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admi_department_list",urlPatterns = "/admin/department_list")
public class AdminDepartmentListServlet extends HttpServlet {
    private DepartmentService depService = new DepartmentService();
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Department> list= depService.GetAllDepartment();
        request.setAttribute("list", list);
		this.getServletContext().removeAttribute("departmentList");
        this.getServletContext().setAttribute("departmentList",list);
        request.getRequestDispatcher("/admin/department_list.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
