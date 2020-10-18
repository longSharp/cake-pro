package cake.bean;

/**
 * @author king
 * @create 2020-10-13-2020/10/13 0013
 */
public class IndexBanner {
    private int good_id;
    private String img_url;

    public int getGood_id() {
        return good_id;
    }

    public void setGood_id(int good_id) {
        this.good_id = good_id;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public IndexBanner(int good_id, String img_url) {
        this.good_id = good_id;
        this.img_url = img_url;
    }

    public IndexBanner() {
    }
}
