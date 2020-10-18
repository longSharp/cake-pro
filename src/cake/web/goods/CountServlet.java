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
 * @create 2020-10-18
 */
@WebServlet(name = "CountServlet")
public class CountServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String b_id = request.getParameter("b_id");
        String s_id = request.getParameter("s_id");
        GoodsServiceImpl goodsService = new GoodsServiceImpl();
        long count = goodsService.getCount(Integer.parseInt(b_id), Integer.parseInt(s_id));
        HttpServiceUtils.send(response,count+"");
    }
}
