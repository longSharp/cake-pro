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
 * @create 2020-10-29
 */
@WebServlet(name = "DeleteCarServlet")
public class DeleteCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String goods_id = request.getParameter("goods_id");
        String user_id = request.getParameter("user_id");
        String specifi = request.getParameter("specifi");
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        int i = goodsService.deleteCarOne(Integer.parseInt(goods_id), Integer.parseInt(user_id),specifi);
        HttpServiceUtils.send(response,i+"");
    }
}
