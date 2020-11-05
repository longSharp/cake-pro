package cake.bean;

/**
 * @describe c_cat数据库表对应的javaBean对象
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Cart {
    private int id;
    private int user_id;
    private String goods_name;
    private int price;
    private int count;
    private String specifi;
    private int collection;
    private String img_url;

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", goods_name='" + goods_name + '\'' +
                ", price=" + price +
                ", count=" + count +
                ", specifi='" + specifi + '\'' +
                ", collection=" + collection +
                ", img_url='" + img_url + '\'' +
                ", goods_id=" + goods_id +
                '}';
    }

    private int goods_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getSpecifi() {
        return specifi;
    }

    public void setSpecifi(String specifi) {
        this.specifi = specifi;
    }

    public int getCollection() {
        return collection;
    }

    public void setCollection(int collection) {
        this.collection = collection;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public Cart(int id, int user_id, String goods_name, int price, int count, String specifi, int collection, String img_url, int goods_id) {
        this.id = id;
        this.user_id = user_id;
        this.goods_name = goods_name;
        this.price = price;
        this.count = count;
        this.specifi = specifi;
        this.collection = collection;
        this.img_url = img_url;
        this.goods_id = goods_id;
    }

    public Cart() {
    }
}
