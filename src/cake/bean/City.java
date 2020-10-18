package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class City {
    private int cid;
    private String city;
    private int pid;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public City(int cid, String city, int pid) {
        this.cid = cid;
        this.city = city;
        this.pid = pid;
    }

    public City() {
    }
}
