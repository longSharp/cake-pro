package cake.bean;

import java.util.List;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public class Type {
    private int id;
    private String type_name;
    private List<SmallType> smallType;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public List<SmallType> getSmallType() {
        return smallType;
    }

    public void setSmallType(List<SmallType> smallType) {
        this.smallType = smallType;
    }

    public Type(int id, String type_name, List<SmallType> smallType) {
        this.id = id;
        this.type_name = type_name;
        this.smallType = smallType;
    }

    public Type() {
    }
}
