package cake.dao;

import java.util.List;

/**
 * @author king
 * @create 2020-10-13-2020/10/13 0013
 */
public interface ProvinceCityDao {
    /**
     * 获取所有省份
     * @return 返回一个省份信息的javaBean
     */
    public List provin();

    /**
     * 获取每个省份对应的城市
     * @return 省份的id
     */
    public List city(int pid);

    /**
     * 根据城市名称获取城市信息
     * @param city 城市名称
     * @return 返回一个城市javaBean集合
     */
    public List city(String city);

}
