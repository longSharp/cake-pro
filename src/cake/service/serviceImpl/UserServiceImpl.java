package cake.service.serviceImpl;

import cake.bean.User;
import cake.dao.BaseDao;
import cake.dao.daoImpl.UserDaoImpl;
import cake.service.UserService;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class UserServiceImpl extends UserDaoImpl implements UserService {

    @Override
    public int registUser(User user) {
        return saveUser(user);
    }

    @Override
    public User login(String username , String password) {
        return queryUserByUsernameAndPassword(username,password);
    }

    @Override
    public boolean existsUsername(String username) {
        User user = queryUserByUsername(username);
        if (user != null){
            return false;
        }
        return true;
    }
}
