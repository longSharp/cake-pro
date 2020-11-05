package cake.service;

import cake.bean.Cart;

import java.util.List;

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
     * @param b_id 大类型的id
     * @param s_id 小类型的id
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

    /**
     * 获取推荐部分的数据
     * @param i 需要返回的数据条数
     * @return 返回一个json字符串
     */
    public String getRecom(int i);

    /**
     * 获取用户要查询的数据
     * @param fuzz 用户输入的字符串
     * @return 返回一个json字符串
     */
    public String getFuzzy(String fuzz);

    /**
     * 根据用户id获取购物车所有商品信息
     * @param user_id 用户id
     * @return 返回一个json字符串
     */
    public String getCart(int user_id);

    /**
     * 保存商品加入购物车
     * @param cart 购物车对象
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int saveCart(Cart cart);

    /**
     * 修改购物车商品收藏信息
     * @param coll 是否收藏
     * @param goods_id 商品id
     * @param user_id 用户id
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int updateCarColl(int coll,int goods_id,int user_id,String specifi);

    /**
     * 修改购物车同一商品数量
     * @param count 商品数量
     * @param goods_id 商品id
     * @param user_id 用户id
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int updateCarCoun(int count,int goods_id,int user_id,String specifi);

    /**
     * 删除购物车商品信息
     * @param goods_id 商品id
     * @param user_id 用户id
     * @return 若返回-1则代表操作失败,反之亦然
     */
    public int deleteCarOne(int goods_id,int user_id,String specifi);

    /**
     * 获取用户所有收藏商品
     * @param user_id 用户id
     * @return 返回json字符串
     */
    public String getCarColl(int user_id);
}
