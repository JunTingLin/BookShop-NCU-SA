package com.NCU.BookShop.service;

<<<<<<<< HEAD:NCU_BookShop/src/main/java/com/NCU/BookShop/service/UserService.java
import com.NCU.BookShop.dao.UserDao;
import com.NCU.BookShop.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
========
import dao.UserDao;
import model.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
>>>>>>>> 78c626e5f67dccdccf59cadcb3c8262c7cd76022:NCU_BookShop/src/main/java/service/UserService.java

import java.sql.SQLException;

@Service
public class UserService {
    @Autowired
    private UserDao uDao;
    public boolean register(User user) {
        try {
            if(uDao.isUsernameExist(user.getUsername())) {
                return false;
            }
            if(uDao.isEmailExist(user.getEmail())) {
                return false;
            }
            uDao.addUser(user);
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }

    public User login(String ue,String password) {
        User user=null;
        PasswordEncoder pe = new BCryptPasswordEncoder();  //BCryptPasswordEncoder

        try {
            user = uDao.selectByUsername(ue);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(user!=null && pe.matches(password, user.getPassword())) {
            return user;
        }
        try {
            user=uDao.selectByEmail(ue);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(user!=null && pe.matches(password, user.getPassword())) {
            return user;
        }
        return null;
    }
    public User selectById(int id) {
        User u=null;
        try {
            u = uDao.selectById(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return u;
    }
    public void updateUserAddress(User user) {
        try {
            uDao.updateUserAddress(user);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void updatePwd(User user) {
        try {
            uDao.updatePwd(user);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


    public boolean delete(int id ) {
        try {
            uDao.delete(id);
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
    }
}
