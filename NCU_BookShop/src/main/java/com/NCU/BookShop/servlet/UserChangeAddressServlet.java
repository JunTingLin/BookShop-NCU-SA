package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.User;
import org.apache.commons.beanutils.BeanUtils;
import com.NCU.BookShop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "user_changeaddress",urlPatterns = "/user_changeaddress")
@Controller
public class UserChangeAddressServlet extends HttpServlet {
    @Autowired
    private UserService uService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User loginUser = (User) request.getSession().getAttribute("user");

        try {
            BeanUtils.copyProperties(loginUser, request.getParameterMap());
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
        e.printStackTrace();
    }
    uService.updateUserAddress(loginUser);
        request.setAttribute("msg", "收貨訊息更新成功！");
        request.getRequestDispatcher("/user_center.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                config.getServletContext());
    }
}
