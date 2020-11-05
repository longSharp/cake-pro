package cake.web.admin;

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
 * @create 2020-10-30
 */
@WebServlet(name = "UserInfoServlet")
public class UserInfoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String username = request.getParameter("username");
        UserServiceImpl userService = new UserServiceImpl();
        String user = userService.getUser(username);
        HttpServiceUtils.send(response,user);
    }
}
