package service;

import dao.BooksDao;
import model.Books;
import model.Page;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class BooksService {
    private BooksDao bDao=new BooksDao();
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
    public List<Books> selectBooksByTypeID(int typeID)
    {
        List<Books> list=null;
        try {
            list=bDao.selectBooksByTypeID(typeID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
//    public Page selectPageByTypeID(int typeID,int pageNumber)
//    {
//        Page p=new Page();
//        p.setPageNumber(pageNumber);
//        int totalCount=0;
//        try {
//            totalCount=bDao.getCountOfBooksByTypeID(typeID);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        p.SetPageSizeAndTotalCount(8,totalCount);
//
//        List list=null;
//        try {
//            list=bDao.selectBooksByTypeID(typeID,pageNumber,8);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        p.setList(list);
//        return p;
//    }
    public Page getBooksRecommendPage(int type,int pageNumber) {
        Page p = new Page();
        p.setPageNumber(pageNumber);
        int totalCount = 0;
        try {
            totalCount = bDao.getRecommendCountOfBooksByTypeID(type);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(8, totalCount);
        List list=null;
        try {
            list = bDao.selectBooksbyRecommend(type, pageNumber, 8);
            for(Books b : (List<Books>)list) {
                b.setScroll(bDao.isScroll(b));
                b.setHot(bDao.isHot(b));
                b.setNew(bDao.isNew(b));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.setList(list);
        return p;
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
    public Page getSearchBooksPage(String keyword, int pageNumber) {
        Page p = new Page();
        p.setPageNumber(pageNumber);
        int totalCount = 0;
        try {
//			totalCount = bDao.getBooksCount(typeId);
            totalCount = bDao.getSearchCount(keyword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(8, totalCount);
        List list=null;
        try {
//			list = bDao.selectBooks(keyword, pageNo, 8);
            list = bDao.selectSearchBooks(keyword,pageNumber,8);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.setList(list);
        return p;
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
