package cake.bean;

import java.util.List;

/**
 * @author 龙朝敏
 * @describe 商品首页信息
 * @create 2020-10-15
 */
public class IndexGoods {
    private int id;
    private String good_name;
    private int price;
    private String introduc;
    private String index_img;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGood_name() {
        return good_name;
    }

    public void setGood_name(String good_name) {
        this.good_name = good_name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getIntroduc() {
        return introduc;
    }

    public void setIntroduc(String introduc) {
        this.introduc = introduc;
    }

    public String getIndex_img() {
        return index_img;
    }

    public void setIndex_img(String index_img) {
        this.index_img = index_img;
    }

    public IndexGoods(int id, String good_name, int price, String introduc, String index_img) {
        this.id = id;
        this.good_name = good_name;
        this.price = price;
        this.introduc = introduc;
        this.index_img = index_img;
    }

    public IndexGoods() {
    }
}
