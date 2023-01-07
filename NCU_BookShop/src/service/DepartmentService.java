package service;

import dao.DepartmentDao;
import model.Department;

import java.sql.SQLException;
import java.util.List;


public class DepartmentService {
    
    DepartmentDao tDao = new DepartmentDao();
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
