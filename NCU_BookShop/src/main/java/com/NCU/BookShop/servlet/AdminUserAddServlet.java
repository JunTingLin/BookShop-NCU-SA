package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.User;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import com.NCU.BookShop.service.UserService;
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

@WebServlet(name = "admin_user_add",urlPatterns = "/admin/user_add")
@Controller
public class AdminUserAddServlet extends HttpServlet {
    @Autowired
    private UserService uService;
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
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
            request.setAttribute("msg", "用戶添加成功！");
            request.getRequestDispatcher("/admin/user_list").forward(request, response);
        }else {
            request.setAttribute("failMsg", "用戶名或電子信箱重複，請重新填寫！");
            request.setAttribute("u",user);
            request.getRequestDispatcher("/admin/user_add.jsp").forward(request, response);
        }
    }
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                config.getServletContext());
    }
}
