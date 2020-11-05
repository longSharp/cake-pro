package cake.web.goods;

import cake.bean.Cart;
import cake.service.serviceImpl.GoodsServiceImpl;
import cake.utils.HttpServiceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-29
 */
@WebServlet(name = "AddCarServlet")
public class AddCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String user_id = request.getParameter("user_id");
        String goods_name = request.getParameter("goods_name");
        String price = request.getParameter("price");
        String specifi = request.getParameter("specifi");
        String collection = request.getParameter("collection");
        String img_url = request.getParameter("img_url");
        String goods_id = request.getParameter("goods_id");
        Cart cart = new Cart(-1, Integer.parseInt(user_id), goods_name, Integer.parseInt(price), 1, specifi, Integer.parseInt(collection), img_url, Integer.parseInt(goods_id));
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        int i = goodsService.saveCart(cart);
        HttpServiceUtils.send(response,i+"");
    }
}
