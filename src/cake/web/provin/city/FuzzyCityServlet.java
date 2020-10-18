package cake.web.provin.city;

import cake.service.serviceImpl.ProvinceCityServiceImpl;
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
@WebServlet(name = "FuzzyCityServlet")
public class FuzzyCityServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        ProvinceCityServiceImpl provinceCityService = new ProvinceCityServiceImpl();
        String name = request.getParameter("name");
        String city = provinceCityService.getCity(name);
        HttpServiceUtils.send(response,city);
    }
}
