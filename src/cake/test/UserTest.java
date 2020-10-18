package cake.test;

import cake.bean.User;
import cake.dao.daoImpl.UserDaoImpl;
import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class UserTest {
    public static void main(String[] args) {
        UserDaoImpl userDao = new UserDaoImpl();
        List<User> list = new ArrayList<>();
        User user = userDao.queryUserByUsername("龙朝敏");
        list.add(user);
        Gson gson = new Gson();
        String s = gson.toJson(list);
        System.out.println(s);
    }
}
