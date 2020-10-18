package cake.service;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-17
 */
public interface DynamicService {
    /**
     * 获取全部动态信息, 并转换成json字符串
     * @return 返回一个json字符串
     */
    public String getDynamicAll();

    /**
     * 根据id获取一条品牌动态信息,并且将数据转换成json字符串
     * @return 返回一个json字符串
     */
    public String getDynamicOne(int id);

    /**
     * 获取生产资质页面信息,并且转换成json字符串
     * @return 返回一个json字符串
     */
    public String getQual();
}
