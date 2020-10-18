package cake.bean;

import java.util.List;

/**
 * 获取商品所有信息
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Goods {
    private int id;
    private String good_name;
    private String s_type_name;
    private String type_name;
    private int price;
    private String introduc;
    private String index_img;
    private String introduc_img;
    private List gallery;
    private List specifications;

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

    public String getIntroduc_img() {
        return introduc_img;
    }

    public void setIntroduc_img(String introduc_img) {
        this.introduc_img = introduc_img;
    }

    public String getS_type_name() {
        return s_type_name;
    }

    public void setS_type_name(String s_type_name) {
        this.s_type_name = s_type_name;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public Goods(int id, String good_name, String s_type_name, String type_name, int price, String introduc, String index_img, String introduc_img) {
        this.id = id;
        this.good_name = good_name;
        this.s_type_name = s_type_name;
        this.type_name = type_name;
        this.price = price;
        this.introduc = introduc;
        this.index_img = index_img;
        this.introduc_img = introduc_img;
    }

    public Goods() {
    }
}
