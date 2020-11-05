package cake.web.admin;

import cake.bean.User;
import cake.service.serviceImpl.UserServiceImpl;
import cake.utils.HttpServiceUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class RegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        User user = new User();
        user.setUser_name(username);
        user.setPassword(password);
        user.setEmail(email);
        UserServiceImpl userService = new UserServiceImpl();
        int i = userService.registUser(user);
        HttpServiceUtils.send(response,i+"");
    }
}
