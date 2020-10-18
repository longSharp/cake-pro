package cake.service.serviceImpl;

import cake.bean.City;
import cake.bean.Provin;
import cake.dao.daoImpl.ProvinceCityDaoImpl;
import cake.service.ProvinceCityService;
import cake.utils.JSONUtiles;
import com.google.gson.Gson;

import java.util.List;

/**
 * @author king
 * @create 2020-10-13-2020/10/13 0013
 */
public class ProvinceCityServiceImpl extends ProvinceCityDaoImpl implements ProvinceCityService {
    @Override
    public String getProvin() {
        List<Provin> provin = provin();
        return JSONUtiles.toJson(provin);
    }

    @Override
    public String getCity(int pid) {
        List<City> city = city(pid);
        return JSONUtiles.toJson(city);
    }

    @Override
    public String getCity(String city) {
        city = "%"+city+"%";
        List city1 = city(city);
        return JSONUtiles.toJson(city1);
    }
}
