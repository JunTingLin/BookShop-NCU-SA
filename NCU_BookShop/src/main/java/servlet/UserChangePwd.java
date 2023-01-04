package com.NCU.BookShop.servlet;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/UserChangePwd.java
import com.NCU.BookShop.model.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import com.NCU.BookShop.service.UserService;
========
import model.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import service.UserService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/UserChangePwd.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "user_changepwd",urlPatterns = "/user_changepwd")
public class UserChangePwd extends HttpServlet {

    private UserService uService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String newPwd = request.getParameter("newPassword");

        User u = (User) request.getSession().getAttribute("user");
        PasswordEncoder pe = new BCryptPasswordEncoder();

        if(pe.matches(password, u.getPassword())) { 
            u.setPassword(pe.encode(newPwd));
            uService.updatePwd(u);
            request.setAttribute("msg", "修改成功！");
            request.getRequestDispatcher("/user_center.jsp").forward(request, response);
        }else {
            request.setAttribute("failMsg", "修改失敗，原密碼不正確，請確認後再嘗試！");
            request.getRequestDispatcher("/user_center.jsp").forward(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
