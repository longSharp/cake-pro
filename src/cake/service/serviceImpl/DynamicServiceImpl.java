package cake.service.serviceImpl;

import cake.bean.Dynamic;
import cake.dao.daoImpl.DynamicDaoImpl;
import cake.service.DynamicService;
import cake.utils.JSONUtiles;

import java.util.List;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-17
 */
public class DynamicServiceImpl extends DynamicDaoImpl implements DynamicService {
    @Override
    public String getDynamicAll() {
        List list = queryByAll();
        return JSONUtiles.toJson(list);
    }

    @Override
    public String getDynamicOne(int id) {
        Dynamic dynamic = queryByOne(id);
        return JSONUtiles.toJson(dynamic);
    }

    @Override
    public String getQual() {
        List list = queryByQualList();
        return JSONUtiles.toJson(list);
    }
}
