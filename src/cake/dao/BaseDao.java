package cake.dao;

import cake.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @author king
 * @create 2020-10-12-2020/10/12 0012
 */
public abstract class BaseDao {
    private QueryRunner queryRunner = new QueryRunner();

    /**
     * 用来执行数据库更新操作(insert/update/delete)
     * @param sql 需要执行的sql语句
     * @param args 需要填充的条件参数
     * @return 如果返回-1则代表sql语句没有改变数据库, 否则返回数据库被更新数据的行数
     */
    public int update(String sql , Object... args ){
        Connection conn = JdbcUtils.getConnection();
        try {
            return queryRunner.update(conn,sql,args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.close(conn);
        }
        return -1;
    }

    /**
     * 将查询到的数据封装在javaBean并且返回
     * @param type 返回对象的类型
     * @param sql 需执行的sql语句
     * @param args sql对应的参数值
     * @param <T> 返回类型的泛型
     * @return 返回一个javaBean
     */
    public <T> T queryForOne(Class<T> type , String sql , Object... args){
        Connection conn = JdbcUtils.getConnection();
        try {
            return queryRunner.query(conn,sql,new BeanHandler<>(type),args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.close(conn);
        }
        return null;
    }

    /**
     * 将查询到的数据封装在javaBean放在集合里面并且返回集合
     * @param type 返回集合的元素类型
     * @param sql 需执行的sql
     * @param args sql对应的参数值
     * @param <T> 返回集合的泛型
     * @return 返回一个集合,集合中每一个元素是一个javaBean
     */
    public <T> List<T> queryForList(Class<T> type , String sql , Object... args){
        Connection conn = JdbcUtils.getConnection();
        try {
            return queryRunner.query(conn,sql,new BeanListHandler<>(type),args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally{
            JdbcUtils.close(conn);
        }
        return null;
    }

    /**
     * 执行返回一行一列的数据
     * @param sql 需执行的sql语句
     * @param args sql对应的参数值
     * @return 返回一个数据
     */
    public Object queryForSingleValue(String sql , Object... args){
        Connection conn = JdbcUtils.getConnection();
        try {
            return queryRunner.query(conn,sql,new ScalarHandler(),args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.close(conn);
        }
        return null;
    }


}
