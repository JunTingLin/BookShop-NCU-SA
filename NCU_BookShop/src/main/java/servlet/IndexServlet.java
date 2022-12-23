package servlet;

import service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "IndexServlet",urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    private GoodsService gService=new GoodsService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,Object> ScrollGood=gService.getScrollGood();
        request.setAttribute("scroll",ScrollGood);

        List<Map<String,Object>>scrollList=gService.getGoodsList(1);
        request.setAttribute("scrollList",scrollList);

        List<Map<String,Object>>newList=gService.getGoodsList(2);
        request.setAttribute("newList",newList);

        request.getRequestDispatcher("index.jsp").forward(request,response);


    }
}
