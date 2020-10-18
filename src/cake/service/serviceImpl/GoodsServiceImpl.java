package cake.service.serviceImpl;

import cake.bean.DetailGoods;
import cake.bean.SmallType;
import cake.bean.Type;
import cake.dao.daoImpl.GoodsDaoImpl;
import cake.service.GoodsService;
import cake.utils.JSONUtiles;

import java.util.List;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-15
 */
public class GoodsServiceImpl extends GoodsDaoImpl implements GoodsService {
    @Override
    public String getDetailGoods(int id) {
        DetailGoods detailGoods = queryDetailGoodsByOne(id);
        List spec = querySpecificationsByList(id);
        List gall = queryGalleryByList(id);
        detailGoods.setSpecifications(spec);
        detailGoods.setGallery(gall);
        return JSONUtiles.toJson(detailGoods);
    }

    @Override
    public String getIndexGoods(int b_id,int s_id,int index, int limit) {
        List list = queryIndexGoodsByList(b_id,s_id,index, limit);
        return JSONUtiles.toJson(list);
    }

    @Override
    public String getIndexGoodsForType(int type) {
        List list = queryIndexGoodsForTypeByList(type);
        return JSONUtiles.toJson(list);
    }

    @Override
    public String getIndexGoodsForSmallType(int type) {
        List list = queryIndexGoodsForSmallTypeByList(type);
        return JSONUtiles.toJson(list);
    }

    @Override
    public String getGoodsType() {
        List<Type> list = queryTypeByList();
        for (int i = 0; i < list.size(); i++) {
            List list1 = querySmallTypeByList(list.get(i).getId());
            list.get(i).setSmallType(list1);
        }
        return JSONUtiles.toJson(list);
    }

    @Override
    public String getGoodsSmallType(int typeId) {
        List<SmallType> list = querySmallTypeByList(typeId);
        return JSONUtiles.toJson(list);
    }

    @Override
    public long getCount(int b_id, int s_id) {
        return queryCount(b_id,s_id);
    }
}
