package cake.dao;

import cake.bean.DetailGoods;

import java.util.List;

/**
 * @author 龙朝敏
 * @create 2020-10-15-2020/10/15 0015
 */
public interface GoodsDao {
    /**
     * 获根据商品id取一件商品的信息
     * @param id 商品的id
     * @return 返回一个商品表对应的javaBean
     */
    public DetailGoods queryDetailGoodsByOne(int id);

    /**
     * 获取一系列商品首页信息
     * @param b_id 商品大类型id
     * @param s_id 商品小类型id
     * @param index 分页查询需要从index开始查询
     * @param limit 需要查询几条
     * @return 返回一个商品集合
     */
    public List queryIndexGoodsByList(int b_id,int s_id,int index,int limit);

    /**
     * 根据商品大类型获取一系列商品信息
     * @param type 大类型id
     * @return 返回一个集合
     */
    public List queryIndexGoodsForTypeByList(int type);

    /**
     * 根据商品小类型获取一系列商品信息
     * @param type 小类型id
     * @return 返回一个集合
     */
    public List queryIndexGoodsForSmallTypeByList(int type);

    /**
     * 获取所有商品大类型名称信息
     * @return 返回一个List集合
     */
    public List queryTypeByList();

    /**
     * 获取所有商品小类型名称信息
     * @return 返回一个List集合
     */
    public List querySmallTypeByList(int typeId);

    /**
     *根据商品id获取商品规格信息
     * @param id 商品id
     * @return 返回一个List集合
     */
    public List querySpecificationsByList(int id);

    /**
     * 根据商品id获取商品页的banner图片
     * @param id 商品id
     * @return 返回一个List集合
     */
    public List queryGalleryByList(int id);

    /**
     * 获取到查询数据的总数据
     * @param b_id 商品大类型id
     * @param s_id 商品小类型id
     * @return 返回一个数值
     */
    public long queryCount(int b_id,int s_id);

    /**
     * 获取几个商品作为推荐商品
     * @return 返回一个list集合
     */
    public List queryRecommend();
}
