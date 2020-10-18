package cake.dao.daoImpl;

import cake.bean.City;
import cake.bean.Provin;
import cake.dao.BaseDao;
import cake.dao.ProvinceCityDao;

import java.util.List;

/**
 * @author king
 * @create 2020-10-13-2020/10/13 0013
 */
public class ProvinceCityDaoImpl extends BaseDao implements ProvinceCityDao {
    @Override
    public List provin() {
        String sql = "select * from provincial";
        return queryForList(Provin.class, sql, null);
    }

    @Override
    public List city(int pid) {
        String sql = "select * from city where pid=?";
        return queryForList(City.class,sql,pid);
    }

    @Override
    public List city(String city) {
        String sql = "select * from city where city like ?";
        return queryForList(City.class,sql,city);
    }
}
