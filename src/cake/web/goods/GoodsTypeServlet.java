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
 * @describe
 * @create 2020-10-15
 */
@WebServlet(name = "GoodsTypeServlet")
public class GoodsTypeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        String goodsType = goodsService.getGoodsType();
        HttpServiceUtils.send(response,goodsType);
    }
}
