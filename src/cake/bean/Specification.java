package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Specification {
    private int good_s_id;
    private String specification;
    private int s_price;

    public int getGood_s_id() {
        return good_s_id;
    }

    public void setGood_s_id(int good_s_id) {
        this.good_s_id = good_s_id;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public int getS_price() {
        return s_price;
    }

    public void setS_price(int s_price) {
        this.s_price = s_price;
    }

    public Specification(int good_s_id, String specification, int s_price) {
        this.good_s_id = good_s_id;
        this.specification = specification;
        this.s_price = s_price;
    }

    public Specification() {
    }
}
