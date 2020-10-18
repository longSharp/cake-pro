package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Gallery {
    private int good_id;
    private String image_url;

    public int getGood_id() {
        return good_id;
    }

    public void setGood_id(int good_id) {
        this.good_id = good_id;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public Gallery(int good_id, String image_url) {
        this.good_id = good_id;
        this.image_url = image_url;
    }

    public Gallery() {
    }
}
