package cake.service;

import cake.bean.User;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public interface UserService {
    /**
     * 注册用户
     * @param user 用户javaBean
     */
    public int registUser(User user);

    /**
     * 登录用户
     * @param username
     * @param password
     * @return 若查询到则返回登录用户javaBean
     */
    public User login(String username , String password);

    /**
     * 查询用户是否可用
     * @param username 用户名
     * @return 若返回true则表示可用,否则不可用
     */
    public boolean existsUsername(String username);
}
