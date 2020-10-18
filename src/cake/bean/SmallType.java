package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class SmallType {
    private int id;
    private int b_id;
    private String s_type_name;
    private String type_img;

    public String getType_img() {
        return type_img;
    }

    public void setType_img(String type_img) {
        this.type_img = type_img;
    }

    public SmallType(int id, int b_id, String s_type_name, String type_img) {
        this.id = id;
        this.b_id = b_id;
        this.s_type_name = s_type_name;
        this.type_img = type_img;
    }

    public SmallType() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public String getS_type_name() {
        return s_type_name;
    }

    public void setS_type_name(String s_type_name) {
        this.s_type_name = s_type_name;
    }
}
