package cake.dao;

import cake.bean.Cart;
import cake.bean.DetailGoods;

import java.util.List;

/**
 * @author 龙朝敏
 * @create 2020-10-15-2020/10/15 0015
 */
public interface GoodsDao {

    /**
     * 获取所有商品数据
     * @return 返回一个List集合
     */
    public List queryAllGoods();
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
     * @param i 需要返回几条推荐数据
     * @return 返回一个list集合
     */
    public List queryRecommend(int i);

    /**
     * 根据用户输入的模糊字段查询数据,并返回
     * @param fuzz 模糊查询字符串
     * @return 返回一个List集合
     */
    public List queryGoods(String fuzz);

    /**
     * 获取用户购物车信息
     * @param user_id 用户id
     * @return 返回购物车所有信息
     */
    public List queryByCar(int user_id);

    /**
     * 删除购物车商品信息
     * @param goods_id 商品id
     * @param user_id 用户id
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int deleteCar(int goods_id,int user_id,String specifi);

    /**
     * 保存购物车商品信息
     * @param cart 购物车商品信息javaBean
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int saveCar(Cart cart);

    /**
     * 修改购物车商品收藏信息
     * @param coll 是否收藏
     * @param goods_id 商品id
     * @param user_id 用户id
     * @param specifi 商品规格
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int updateCartColl(int coll,int goods_id,int user_id,String specifi);

    /**
     * 修改购物车同一商品数量
     * @param count 商品数量
     * @param goods_id 商品id
     * @param user_id 用户id
     * @param specifi 商品规格
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int updateCartCount(int count,int goods_id,int user_id,String specifi);

    /**
     * 查询此商品是否存在购物车当中
     * @param goods_id 商品id
     * @param user_id 用户id
     * @return 返回一个javaBean对象
     */
    public Cart queryByCartOne(int goods_id,int user_id);

    /**
     * 查询用户收藏的商品
     * @param user_id 用户id
     * @return 返回商品类集合
     */
    public List queryByCarColl(int user_id);
}
