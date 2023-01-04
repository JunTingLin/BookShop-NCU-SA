package com.NCU.BookShop.dao;

import com.NCU.BookShop.model.Department;
import com.NCU.BookShop.utils.DBUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public class DepartmentDao
{
    public List<Department> GetAllDepartment() throws SQLException {
        QueryRunner r=new QueryRunner(DBUtil.getDataSource());
        String sql="select * from department";
        return r.query(sql,new BeanListHandler<Department>(Department.class));
    }
    public Department selectDepartmentNameByID(int departmentid) throws SQLException {
        QueryRunner r=new QueryRunner(DBUtil.getDataSource());
        String sql="select * from department where id=?";
        return r.query(sql,new BeanHandler<Department>(Department.class),departmentid);
    }
    public Department select(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "select * from department where id = ?";
        return r.query(sql, new BeanHandler<Department>(Department.class),id);
    }
    public void insert(Department dep) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "insert into department(name) values(?)";
        r.update(sql,dep.getName());
    }
    public void update(Department dep) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "update department set name=? where id = ?";
        r.update(sql,dep.getName(),dep.getId());
    }
    public void delete(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "delete from department where id = ?";
        r.update(sql,id);
    }
}
