package cake.dao.daoImpl;

import cake.bean.*;
import cake.dao.BaseDao;
import cake.dao.GoodsDao;

import java.util.List;

/**
 * @author 龙朝敏
 * @create 2020-10-15
 */
public class GoodsDaoImpl extends BaseDao implements GoodsDao {
    @Override
    public List queryAllGoods() {
        String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img from goods";
        return queryForList(IndexGoods.class,sql,null);
    }

    @Override
    public DetailGoods queryDetailGoodsByOne(int id) {
        String sql = "select goods.id,goods.good_name,goods.introduc_img,c_type.type_name,c_small_type.s_type_name\n" +
                "from goods \n" +
                "left join c_type \n" +
                "on goods.type=c_type.id\n" +
                "left join c_small_type\n" +
                "on goods.small_type=c_small_type.id\n" +
                "where goods.id=?";
        return queryForOne(DetailGoods.class,sql,id);
    }

    @Override
    public List queryIndexGoodsByList(int b_id,int s_id,int index, int limit) {
        if (b_id!=0){
                    String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img\n" +
                    "from goods \n" + "where type=?\n"+
                    "order by id asc limit ?, ?";
            return queryForList(IndexGoods.class,sql,b_id,index,limit);
        }else if (s_id!=0){
            String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img\n" +
                    "from goods \n" + "where small_type=?\n"+
                    "order by id asc limit ?, ?";
            return queryForList(IndexGoods.class,sql,s_id,index,limit);
        }else {
            String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img\n" +
                    "from goods \n" +
                    "order by id asc limit ?, ?";
            return queryForList(IndexGoods.class,sql,index,limit);
        }

    }

    @Override
    public List queryIndexGoodsForTypeByList(int type) {
        String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img\n" +
                "from goods \n" +
                "where goods.type=?";
        return queryForList(IndexGoods.class,sql,type);
    }

    @Override
    public List queryIndexGoodsForSmallTypeByList(int type) {
        String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img\n" +
                "from goods \n" +
                "where goods.small_type=?";
        return queryForList(IndexGoods.class,sql,type);
    }

    @Override
    public List queryTypeByList() {
        String sql = "select * from c_type";
        return queryForList(Type.class,sql,null);
    }

    @Override
    public List querySmallTypeByList(int typeID) {
        String sql = "select * from c_small_type where b_id=?";
        return queryForList(SmallType.class,sql,typeID);
    }

    @Override
    public List querySpecificationsByList(int id) {
        String sql = "select * from good_specifications where good_s_id=?";
        return queryForList(Specification.class,sql,id);
    }

    @Override
    public List queryGalleryByList(int id) {
        String sql = "select * from good_gallery where good_id=?";
        return queryForList(Gallery.class,sql,id);
    }

    @Override
    public long queryCount(int b_id, int s_id) {
        if (b_id!=0){
            String sql = "select count(*)\n" +
                    "from goods \n" +
                    "where type=?";
            return (long) queryForSingleValue(sql,b_id);
        }else if (s_id!=0){
            String sql = "select count(*)\n" +
                    "from goods \n" +
                    "where small_type=?";
            return (long) queryForSingleValue(sql,s_id);
        }else {
            String sql = "select count(*)\n" +
                    "from goods";
            return (long) queryForSingleValue(sql,null);
        }
    }

    @Override
    public List queryRecommend(int i) {
        String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img from goods ORDER BY RAND() limit ?";
        return queryForList(IndexGoods.class,sql,i);
    }

    @Override
    public List queryGoods(String fuzz) {
        String sql = "select goods.id,goods.good_name,goods.price,goods.introduc,goods.index_img from goods where goods.good_name like ?";
        fuzz = "%"+fuzz+"%";
        return queryForList(IndexGoods.class,sql,fuzz);
    }

    @Override
    public List queryByCar(int user_id) {
        String sql = "select * from c_cart where user_id=?";
        return queryForList(Cart.class,sql,user_id);
    }

    @Override
    public int deleteCar(int goods_id, int user_id,String specifi) {
        String sql = "delete from c_cart where goods_id=? and user_id=? and specifi=?";
        return update(sql,goods_id,user_id,specifi);
    }

    @Override
    public int saveCar(Cart cart) {
        String sql = "insert into c_cart values(null,?,?,?,?,?,?,?,?)";
        return update(sql,cart.getUser_id(),cart.getGoods_name(),cart.getPrice(),cart.getCount(),cart.getSpecifi(),cart.getCollection(),cart.getImg_url(),cart.getGoods_id());
    }

    @Override
    public int updateCartColl(int coll,int goods_id,int user_id,String specifi) {
        String sql = "update c_cart set collection=? where goods_id=? and user_id=? and specifi=?";
        return update(sql,coll,goods_id,user_id,specifi);
    }

    @Override
    public int updateCartCount(int count,int goods_id,int user_id,String specifi) {
        String sql = "update c_cart set count=? where goods_id=? and user_id=? and specifi=?";
        return update(sql,count,goods_id,user_id,specifi);
    }

    @Override
    public Cart queryByCartOne(int goods_id, int user_id) {
        String sql = "select * from c_cart where goods_id=? and user_id=?";
        return queryForOne(Cart.class,sql,goods_id,user_id);
    }

    @Override
    public List queryByCarColl(int user_id) {
        String sql = "select * from c_cart where user_id=? and collection=1";
        return queryForList(Cart.class,sql,user_id);
    }
}
