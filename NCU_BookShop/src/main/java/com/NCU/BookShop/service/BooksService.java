package com.NCU.BookShop.service;

import com.NCU.BookShop.model.Books;
import com.NCU.BookShop.dao.BooksDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
@Service
public class BooksService {
    @Autowired
    private BooksDao bDao;
    public List<Map<String,Object>> getBooksList(int recommendType) {
        List<Map<String,Object>> list=null;
        try {
            list=bDao.getBooksList(recommendType);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public Map<String,Object> getScrollBook()
    {
        Map<String,Object> scroolBook=null;
        try {
            scroolBook=bDao.getScrollBook();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return scroolBook;
    }
    public List<Books> selectBooksByDepartmentID(int departmentID)
    {
        List<Books> list=null;
        try {
            list=bDao.selectBooksByDepartmentID(departmentID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Books> getBooksRecommend(int type) {

        List list=null;
        try {
            list = bDao.selectBooksbyRecommend(type);
            for(Books b : (List<Books>)list) {
                b.setScroll(bDao.isScroll(b));
                b.setNew(bDao.isNew(b));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    public Books getBooksById(int id) {
        Books b=null;
        try {
            b = bDao.getBooksById(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return b;
    }
    public List<Books> getSearchBooks(String keyword) {
        List list=null;
        try {
            list = bDao.selectSearchBooks(keyword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    public void addRecommend(int id,int type) {
        try {
            bDao.addRecommend(id, type);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void removeRecommend(int id,int type) {
        try {
            bDao.removeRecommend(id, type);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void insert(Books books) {
        try {
            bDao.insert(books);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void update(Books books) {
        try {
            bDao.update(books);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void update(Connection con, Books books) throws SQLException{ //追加含有連線con的更新
//        try {
            bDao.update(con,books);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//改成往外拋，這樣OrderService.addOrder(Order order)才會有機會捕捉到
    }
    public void delete(int id) {
        try {
            bDao.delete(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void lessenStock(Connection con, Books books, int num) throws SQLException{
        books.setStock(books.getStock()-num);
        update(con,books);
    }

}
