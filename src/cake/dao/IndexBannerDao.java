package cake.dao;

import cake.bean.IndexBanner;

import java.util.List;

/**
 * @author king
 * @create 2020-10-14-2020/10/14 0014
 */
public interface IndexBannerDao {
    /**
     * 获取首页轮播图图片
     * @return 返回一个javaBean类
     */
    public List indexBanner();
}
