package cake.service;

/**
 * @author king
 * @create 2020-10-13-2020/10/13 0013
 */
public interface ProvinceCityService {
    /**
     * 获取省份,然后转换成json
     * @return 返回一个json字符串
     */
    public String getProvin();

    /**
     * 根据pid来获取对应省份的城市
     * @param pid 省份的id
     * @return 返回一个json字符串
     */
    public String getCity(int pid);

    /**
     * 根据城市的模糊查询来获取城市信息
     * @return 返回一个集合的json字符串
     */
    public String getCity(String city);
}
