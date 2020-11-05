package cake.web.admin;

import cake.bean.StateCode;
import cake.service.serviceImpl.UserServiceImpl;
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
 * @create 2020-10-27
 */
@WebServlet(name = "IsLoginServlet")
public class IsLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String token = request.getParameter("token");
        UserServiceImpl userService = new UserServiceImpl();
        String login = userService.isLogin(token);
        HttpServiceUtils.send(response,login);
    }
}
