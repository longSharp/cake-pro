package cake.web.provin;

import cake.service.serviceImpl.ProvinceCityServiceImpl;
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
 * @create 2020-10-13-2020/10/13 0013
 */
@WebServlet(name = "ProvinServlet")
public class ProvinServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        ProvinceCityServiceImpl provinC = new ProvinceCityServiceImpl();
        String provin = provinC.getProvin();
        HttpServiceUtils.send(response,provin);
    }
}
