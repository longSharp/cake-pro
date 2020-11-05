package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Provin {
    private int pid;
    private String Provincial;

    public int getPid() {
        return pid;
    }

    public Provin(int pid, String provincial) {
        this.pid = pid;
        Provincial = provincial;
    }

    public Provin() {
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getProvincial() {
        return Provincial;
    }

    public void setProvincial(String provincial) {
        Provincial = provincial;
    }
}
