package cake.web.admin;

import cake.bean.User;
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
@WebServlet(name = "UpdateInfoServlet")
public class UpdateInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response = HttpServiceUtils.setHeader(response);
        String id = request.getParameter("id");
        String user_name = request.getParameter("user_name");
        String email = request.getParameter("email");
        String provinal = request.getParameter("provinal");
        String city = request.getParameter("city");
        String addr = request.getParameter("addr");
        User user = new User(Integer.parseInt(id), user_name, null, email, provinal, city, addr);
        UserServiceImpl userService = new UserServiceImpl();
        int i = userService.updateUserInfo(user);
        HttpServiceUtils.send(response,i+"");
    }
}
