package cake.dao.daoImpl;

import cake.bean.Dynamic;
import cake.bean.Qual;
import cake.dao.BaseDao;
import cake.dao.DynamicDao;

import java.util.List;

/**
 * @author 龙朝敏
 * @describe
 * @create 2020-10-17
 */
public class DynamicDaoImpl extends BaseDao implements DynamicDao {
    @Override
    public List queryByAll() {
        String sql = "select * from c_dynamic";
        return queryForList(Dynamic.class,sql,null);
    }

    @Override
    public Dynamic queryByOne(int id) {
        String sql = "select * from c_dynamic where id=?";
        return queryForOne(Dynamic.class,sql,id);
    }

    @Override
    public List queryByQualList() {
        String sql = "select * from c_qual";
        return queryForList(Qual.class,sql,null);
    }

}
