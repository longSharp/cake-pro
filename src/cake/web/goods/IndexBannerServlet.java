package cake.web.goods;

import cake.service.serviceImpl.IndexBannerServiceImpl;
import cake.utils.HttpServiceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author king
 * @create 2020-10-14-2020/10/14 0014
 */
@WebServlet(name = "IndexBannerServlet")
public class IndexBannerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        IndexBannerServiceImpl indexBannerService = new IndexBannerServiceImpl();
        String indexBanner = indexBannerService.getIndexBanner();
        PrintWriter writer = response.getWriter();
        writer.write(indexBanner);
        writer.close();
    }
}
