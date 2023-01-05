package com.NCU.BookShop.dao;

import com.NCU.BookShop.model.Books;
import com.NCU.BookShop.model.Recommend;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;
import com.NCU.BookShop.utils.DBUtil;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Repository
public class BooksDao {

    // 橫幅列表(recommend type==1)、新品列表(recommend type==2)
    public List<Map<String,Object>> getBooksList(int recommendType) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql="select b.id,b.name,b.cover,b.price,b.author,dep.name departmentname,dep.id departmentID from recommend r,books b,department dep where type=? and r.books_id=b.id and b.department_id=dep.id";
        return r.query(sql, new MapListHandler(),recommendType);
    }

    // 橫幅
    public Map<String,Object> getScrollBook()throws SQLException{
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql="select b.id,b.name,b.cover,b.price  from recommend r,books b where type=1 and r.books_id=b.id";
        return r.query(sql, new MapHandler());
    }

    public List<Books> selectBooksByDepartmentID(int departmentID) throws SQLException {
        // departmentID=0代表所有科系
        if(departmentID==0)
        {
            String sql="select * from books";
            QueryRunner r=new QueryRunner(DBUtil.getDataSource());
            return  r.query(sql,new BeanListHandler<Books>(Books.class));
        }
        else
        {
            String sql="select * from books where department_id=?";
            QueryRunner r=new QueryRunner(DBUtil.getDataSource());
            return  r.query(sql,new BeanListHandler<Books>(Books.class),departmentID);
        }
    }
//    public int getCountOfBooksByTypeID(int typeID) throws SQLException {
//        String sql="";
//        QueryRunner r=new QueryRunner(DBUtil.getDataSource());
//        if(typeID==0)
//        {
//            sql="select count(*) from books";
//            return r.query(sql,new ScalarHandler<Long>()).intValue();
//        }
//        else
//        {
//            sql="select count(*) from books where department_id=?";
//            return r.query(sql,new ScalarHandler<Long>(),typeID).intValue();
//        }
//    }
    public List<Books> selectBooksbyRecommend(int type) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        if(type==0) {
            //當不添加推薦類型限制的時候
            String sql = " select b.id,b.name,b.cover,b.intro,b.price,b.author,b.stock,dep.name departmentname from books b,department dep where b.department_id=dep.id order by b.id";
            return r.query(sql, new BeanListHandler<Books>(Books.class));

        }

        String sql = " select b.id,b.name,b.cover,b.intro,b.price,b.author,b.stock,dep.name departmentname from books b,recommend r,department dep where b.id=r.books_id and b.department_id=dep.id and r.type=? order by b.id";
        return r.query(sql, new BeanListHandler<Books>(Books.class),type);
    }

    public Books getBooksById(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "select b.id,b.name,b.cover,b.price,b.author,b.intro,b.stock,dep.id departmentid,dep.name departmentname from books b,department dep where b.id = ? and b.department_id=dep.id";
        return r.query(sql, new BeanHandler<Books>(Books.class),id);
    }

    public List<Books> selectSearchBooks(String keyword) throws SQLException{
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "select * from books where name like ? ";
        return r.query(sql, new BeanListHandler<Books>(Books.class),"%"+keyword+"%");
    }
    public boolean isScroll(Books b) throws SQLException {
        return isRecommend(b, 1);
    }
    public boolean isNew(Books b) throws SQLException {
        return isRecommend(b, 2);
    }
    private boolean isRecommend(Books b, int type) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "select * from recommend where type=? and books_id=?";
        Recommend recommend = r.query(sql, new BeanHandler<Recommend>(Recommend.class),type,b.getId());
        if(recommend==null) {
            return false;
        }else {
            return true;
        }
    }
    public void addRecommend(int id,int type) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "insert into recommend(type,books_id) values(?,?)";
        r.update(sql,type,id);
    }
    public void removeRecommend(int id,int type) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "delete from recommend where type=? and books_id=?";
        r.update(sql,type,id);
    }
    public void insert(Books b) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "insert into books(name,cover,price,author,intro,stock,department_id) values(?,?,?,?,?,?,?)";
        r.update(sql,b.getName(),b.getCover(),b.getPrice(),b.getAuthor(),b.getIntro(),b.getStock(),b.getDepartment().getId());
    }
    public void update(Books b) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "update books set name=?,cover=?,price=?,author=?,intro=?,stock=?,department_id=? where id=?";
        r.update(sql,b.getName(),b.getCover(),b.getPrice(),b.getAuthor(),b.getIntro(),b.getStock(),b.getDepartment().getId(),b.getId());
    }

    public void update(Connection con, Books b) throws SQLException {  //追加含有連線con的更新
        QueryRunner r = new QueryRunner();
        String sql = "update books set name=?,cover=?,price=?,author=?,intro=?,stock=?,department_id=? where id=?";
        r.update(con,sql,b.getName(),b.getCover(),b.getPrice(),b.getAuthor(),b.getIntro(),b.getStock(),b.getDepartment().getId(),b.getId());
    }
    public void delete(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "delete from books where id = ?";
        r.update(sql,id);
    }
}
