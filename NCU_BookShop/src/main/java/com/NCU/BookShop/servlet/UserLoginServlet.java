package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.NCU.BookShop.service.UserService;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "user_login",urlPatterns = "/user_login")
@Controller
public class UserLoginServlet extends HttpServlet {
    @Autowired
    private UserService uService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ue = request.getParameter("ue");
        String password = request.getParameter("password");
        User user = uService.login(ue, password);
        System.out.println(user);
        if(user==null) {
            request.setAttribute("failMsg", "用戶名、電子信箱或密碼錯誤，請重新登入！");
            request.getRequestDispatcher("/user_login.jsp").forward(request, response);
        }else {
            request.getSession().setAttribute("user", user);
            request.getRequestDispatcher("/user_center.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                config.getServletContext());
    }
}
