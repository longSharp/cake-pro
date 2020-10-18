package cake.service.serviceImpl;

import cake.dao.daoImpl.IndexBannerDaoImpl;
import cake.service.IndexBannerService;
import cake.utils.JSONUtiles;

import java.util.List;

/**
 * @author king
 * @create 2020-10-14-2020/10/14 0014
 */
public class IndexBannerServiceImpl extends IndexBannerDaoImpl implements IndexBannerService {
    @Override
    public String getIndexBanner() {
        List list = indexBanner();
        return JSONUtiles.toJson(list);
    }
}
