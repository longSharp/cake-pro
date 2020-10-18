package cake.dao.daoImpl;

import cake.bean.User;
import cake.dao.BaseDao;
import cake.dao.UserDao;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User queryUserByUsername(String username) {
        String sql = " ";
        return queryForOne(User.class,sql,username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        return null;
    }

    @Override
    public int saveUser(User user) {
        return 0;
    }
}
