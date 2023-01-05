package com.NCU.BookShop.service;

import com.NCU.BookShop.dao.DepartmentDao;
import com.NCU.BookShop.model.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class DepartmentService {
    @Autowired
    DepartmentDao tDao;
    public List<Department> GetAllDepartment()
    {
        List<Department> list=null;
        try {
            list=tDao.GetAllDepartment();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public Department selectDepartmentNameByID(int departmentid)
    {
        Department department =null;
        try {
            department =tDao.selectDepartmentNameByID(departmentid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return department;
    }
    public Department select(int id) {
        Department dep=null;
        try {
            dep = tDao.select(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return dep;
    }
    public void insert(Department dep) {
        try {
            tDao.insert(dep);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void update(Department dep) {
        try {
            tDao.update(dep);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public boolean delete(int id) {
        try {
            tDao.delete(id);
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
    }
}
