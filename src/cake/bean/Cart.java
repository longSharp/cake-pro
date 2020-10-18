package cake.bean;

/**
 * @describe c_cat数据库表对应的javaBean对象
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Cart {
    private String user_name;
    private int good_id;

    public Cart(String user_name, int good_id) {
        this.user_name = user_name;
        this.good_id = good_id;
    }

    public Cart() {
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getGood_id() {
        return good_id;
    }

    public void setGood_id(int good_id) {
        this.good_id = good_id;
    }
}
