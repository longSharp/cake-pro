package cake.service;

/**
 * @author 龙朝敏
 * @describe 商品的逻辑处理接口
 * @create 2020-10-15
 */
public interface GoodsService {
    /**
     * 获根据商品id取一件商品的信息
     * @param id 商品的id
     * @return 返回一个商品表对应的javaBean的json字符串
     */
    public String getDetailGoods(int id);

    /**
     * 获取一系列商品首页信息
     * @param index 分页查询需要从index开始查询
     * @param limit 需要查询几条
     * @return 返回一个商品集合对应的json字符串
     */
    public String getIndexGoods(int b_id,int s_id,int index,int limit);

    /**
     * 根据商品大类型获取一系列商品信息
     * @param type 大类型id
     * @return 返回一个集合对应的json字符串
     */
    public String getIndexGoodsForType(int type);

    /**
     * 根据商品小类型获取一系列商品信息
     * @param type 小类型id
     * @return 返回一个集合对应的json字符串
     */
    public String getIndexGoodsForSmallType(int type);

    /**
     * 获取所有商品大类型名称信息
     * @return 返回一个List集合对应的json字符串
     */
    public String getGoodsType();

    /**
     * 获取所有商品小类型名称信息
     * @return 返回一个List集合对应的json字符串
     */
    public String getGoodsSmallType(int type);

    /**
     * 获取数据的总数
     * @param b_id 商品大类型id
     * @param s_id 商品小类型id
     * @return 返回一个数值
     */
    public long getCount(int b_id,int s_id);
}
