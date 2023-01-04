package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.User;
import com.NCU.BookShop.service.UserService;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/servlet/UserRegisterServlet.java
========
import service.UserService;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/servlet/UserRegisterServlet.java

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "user_register",urlPatterns = "/user_rigister")
public class UserRegisterServlet extends HttpServlet {
    private UserService uService = new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        try {
            BeanUtils.copyProperties(user, request.getParameterMap());
            //重新把user物件內的密碼換成密文
            PasswordEncoder pe = new BCryptPasswordEncoder();
            String encodePassword = pe.encode(request.getParameter("password"));
            user.setPassword(encodePassword);

        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(uService.register(user)) {
            request.setAttribute("msg", "註冊成功，請登入！");
            request.getRequestDispatcher("user_login.jsp").forward(request, response);
        }else {
            request.setAttribute("msg", "用戶名或電子信箱重複，請重新填寫！");
            request.getRequestDispatcher("user_register.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
