package cake.bean;

import java.util.List;

/**
 * @author 龙朝敏
 * @describe 商品详情页信息
 * @create 2020-10-15
 */
public class DetailGoods {
    private int id;
    private String good_name;
    private String introduc_img;
    private String s_type_name;
    private String type_name;
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

    public String getIntroduc_img() {
        return introduc_img;
    }

    public void setIntroduc_img(String introduc_img) {
        this.introduc_img = introduc_img;
    }

    public List getGallery() {
        return gallery;
    }

    public void setGallery(List gallery) {
        this.gallery = gallery;
    }

    public List getSpecifications() {
        return specifications;
    }

    public void setSpecifications(List specifications) {
        this.specifications = specifications;
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

    public DetailGoods(int id, String good_name, String introduc_img, String s_type_name, String type_name, List gallery, List specifications) {
        this.id = id;
        this.good_name = good_name;
        this.introduc_img = introduc_img;
        this.s_type_name = s_type_name;
        this.type_name = type_name;
        this.gallery = gallery;
        this.specifications = specifications;
    }

    public DetailGoods() {
    }
}
