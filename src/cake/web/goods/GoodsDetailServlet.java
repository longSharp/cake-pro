package cake.web.goods;

import cake.service.serviceImpl.GoodsServiceImpl;
import cake.utils.HttpServiceUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 龙朝敏
 * @describe 商品购买详情页web层逻辑
 * @create 2020-10-15
 */
public class GoodsDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        String id = request.getParameter("id");
        String detailGoods = goodsService.getDetailGoods(Integer.parseInt(id));
        HttpServiceUtils.send(response,detailGoods);
    }
}
