package com.NCU.BookShop.dao;

import com.NCU.BookShop.model.Order;
import com.NCU.BookShop.model.OrderItem;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;
import com.NCU.BookShop.utils.DBUtil;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@Repository
public class OrderDao {
    public void insertOrder(Connection con, Order order) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "insert into `order`(total,amount,status,paytype,name,phone,address,datetime,user_id) values(?,?,?,?,?,?,?,?,?)";
        r.update(con,sql,
                order.getTotal(),order.getAmount(),order.getStatus(),
                order.getPaytype(),order.getName(),order.getPhone(),
                order.getAddress(),order.getDatetime(),order.getUser().getId() );
    }
    public int getLastInsertId(Connection con) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "select last_insert_id()";
        BigInteger bi = r.query(con, sql,new ScalarHandler<BigInteger>());
        return Integer.parseInt(bi.toString());
    }
    public void insertOrderItem(Connection con, OrderItem item) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql ="insert into orderitem(price,amount,books_id,order_id) values(?,?,?,?)";
        r.update(con,sql,item.getPrice(),item.getAmount(),item.getBooks().getId(),item.getOrder().getId());
    }
    public List<Order> selectAll(int userid) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "select * from `order` where user_id=? order by datetime desc";
        return r.query(sql, new BeanListHandler<Order>(Order.class),userid);
    }
    public List<OrderItem> selectAllItem(int orderid) throws SQLException{
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql = "select i.id,i.price,i.amount,b.name from orderitem i,books b where order_id=? and i.books_id=b.id";
        return r.query(sql, new BeanListHandler<OrderItem>(OrderItem.class),orderid);
    }
//    public int getOrderCount(int status) throws SQLException {
//        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
//        String sql = "";
//        if(status==0) {
//            sql = "select count(*) from `order`";
//            return r.query(sql, new ScalarHandler<Long>()).intValue();
//        }else {
//            sql = "select count(*) from `order` where status=?";
//            return r.query(sql, new ScalarHandler<Long>(),status).intValue();
//        }
//    }
    public List<Order> selectOrderList(int status) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        // status 0 代表所有訂單
        if(status==0) {
            String sql = "select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from `order` o,user u where o.user_id=u.id order by o.datetime desc";
            return r.query(sql, new BeanListHandler<Order>(Order.class));
        }else {
            String sql = "select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from `order` o,user u where o.user_id=u.id and o.status=? order by o.datetime desc";
            return r.query(sql, new BeanListHandler<Order>(Order.class),status);
        }
    }
    public void updateStatus(int id,int status) throws SQLException {
        QueryRunner r = new QueryRunner(DBUtil.getDataSource());
        String sql ="update `order` set status=? where id = ?";
        r.update(sql,status,id);
    }
}
