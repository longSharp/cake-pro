package cake.web.goods;

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
 * @describe 商品列表页web层逻辑
 * @create 2020-10-15
 */
@WebServlet(name = "GoodsListServlet")
public class GoodsListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String index = request.getParameter("index");
        String limit = request.getParameter("limit");
        String b_id = request.getParameter("b_id");
        String s_id = request.getParameter("s_id");
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        String indexGoods = goodsService.getIndexGoods(Integer.parseInt(b_id),Integer.parseInt(s_id),Integer.parseInt(index), Integer.parseInt(limit));
        HttpServiceUtils.send(response,indexGoods);
    }
}
