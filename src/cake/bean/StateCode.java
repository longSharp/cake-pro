package cake.bean;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-26
 */
public class StateCode {
    private int code;
    private String massage;
    private Token data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMassage() {
        return massage;
    }

    public void setMassage(String massage) {
        this.massage = massage;
    }

    public Token getData() {
        return data;
    }

    public void setData(Token data) {
        this.data = data;
    }

    public StateCode(int code, String massage, Token data) {
        this.code = code;
        this.massage = massage;
        this.data = data;
    }

    public StateCode() {
    }
}
