package cake.dao.daoImpl;

import cake.bean.IndexBanner;
import cake.dao.BaseDao;

import java.util.List;

/**
 * @author king
 * @create 2020-10-14-2020/10/14 0014
 */
public class IndexBannerDaoImpl extends BaseDao implements cake.dao.IndexBannerDao {

    @Override
    public List indexBanner() {
        String sql = "select * from index_banner";
        return queryForList(IndexBanner.class,sql,null);
    }
}
