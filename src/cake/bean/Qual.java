package cake.bean;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Qual {
    private int id;
    private String site;
    private String license;
    private String address;
    private String legal_person;

    public Qual() {
    }

    public Qual(int id, String site, String license, String address, String legal_person) {
        this.id = id;
        this.site = site;
        this.license = license;
        this.address = address;
        this.legal_person = legal_person;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLegal_person() {
        return legal_person;
    }

    public void setLegal_person(String legal_person) {
        this.legal_person = legal_person;
    }
}
