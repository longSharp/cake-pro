package cake.web.dynamic;

import cake.service.serviceImpl.DynamicServiceImpl;
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
 * @create 2020-10-17
 */
@WebServlet(name = "QualServlet")
public class QualServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        DynamicServiceImpl dynamicService = new DynamicServiceImpl();
        String qual = dynamicService.getQual();
        HttpServiceUtils.send(response,qual);
    }
}
