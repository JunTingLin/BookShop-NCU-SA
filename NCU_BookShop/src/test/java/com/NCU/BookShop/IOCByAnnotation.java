package com.NCU.BookShop;

import com.NCU.BookShop.dao.UserDao;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.NCU.BookShop.service.UserService;
import com.NCU.BookShop.servlet.UserLoginServlet;

public class IOCByAnnotation {
    @Test
    public void testAutowireByAnnotation() {
        ApplicationContext ac = new
                ClassPathXmlApplicationContext("spring-ioc-annotation.xml");
        UserLoginServlet userController = ac.getBean(UserLoginServlet.class);
        System.out.println(userController);
        UserService userService = ac.getBean(UserService.class);
        System.out.println(userService);
        UserDao userDao = ac.getBean(UserDao.class);
        System.out.println(userDao);
    }
}
