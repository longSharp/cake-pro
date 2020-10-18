package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Dynamic {
    private int id;
    private String d_title;
    private String d_content;
    private String d_year;
    private String d_time;

    public Dynamic() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Dynamic(int id, String d_title, String d_content, String d_year, String d_time) {
        this.id = id;
        this.d_title = d_title;
        this.d_content = d_content;
        this.d_year = d_year;
        this.d_time = d_time;
    }

    public String getD_title() {
        return d_title;
    }

    public void setD_title(String d_title) {
        this.d_title = d_title;
    }

    public String getD_content() {
        return d_content;
    }

    public void setD_content(String d_content) {
        this.d_content = d_content;
    }

    public String getD_year() {
        return d_year;
    }

    public void setD_year(String d_year) {
        this.d_year = d_year;
    }

    public String getD_time() {
        return d_time;
    }

    public void setD_time(String d_time) {
        this.d_time = d_time;
    }
}
