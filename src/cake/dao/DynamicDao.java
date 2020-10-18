package cake.dao;

import cake.bean.Dynamic;

import java.util.List;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-17
 */
public interface DynamicDao {
    /**
     * 获取品牌动态页面所有信息
     * @return 返回一个list集合
     */
    public List queryByAll();

    /**
     * 获取一条动态信息
     * @return 返回一个信息javaBean
     */
    public Dynamic queryByOne(int id);

    /**
     * 获取生产资质信息
     * @return
     */
    public List queryByQualList();
}
