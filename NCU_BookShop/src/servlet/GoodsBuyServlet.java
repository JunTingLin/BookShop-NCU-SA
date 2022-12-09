package servlet;

import model.Goods;
import model.Order;
import service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "goods_buy",urlPatterns = "/goods_buy")
public class GoodsBuyServlet extends HttpServlet {
    private GoodsService gService = new GoodsService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order o = null;
        if(request.getSession().getAttribute("order") != null) {
            o = (Order) request.getSession().getAttribute("order");
        }else {
            o = new Order();
            request.getSession().setAttribute("order", o);
        }
        int goodsid = Integer.parseInt(request.getParameter("goodsid"));
        Goods goods = gService.getGoodsById(goodsid);

        if(goods.getStock()>0 && o.getItemMap().size()==0) {  //庫存>0 且 order裡面的itemMap沒東西
            o.addGoods(goods);
            response.getWriter().print("ok");
        } else if (goods.getStock()>0 && o.getItemMap().get(goodsid).getAmount() < goods.getStock()) {  //庫存>0 且 該商品加到購物車的數量<庫存，才能在繼續加(買)
            o.addGoods(goods);
            response.getWriter().print("ok");
        } else {
            response.getWriter().print("fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
