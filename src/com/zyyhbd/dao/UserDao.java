package com.zyyhbd.dao;

import com.zyyhbd.entity.User;
import com.zyyhbd.util.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;

public class UserDao {
    public int register(User user) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into user(uid,username,password,email,nickname,telephone) values(?,?,?,?,?,?)";
        int update = runner.update(sql, user.getUid(), user.getUsername(), user.getPassword(), user.getEmail(),
                                    user.getNickname(),user.getTelephone());
        return update;
    }

    public Long checkUsername(String username) throws SQLException{
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select count(*) from user where username = ?";
        Long query = (Long)runner.query(sql,new ScalarHandler(), username);
        return query;
    }

    public User login(String username,String password) throws SQLException{
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from user where username = ? and password = ?";
        User query = runner.query(sql,new BeanHandler<User>(User.class),username, password);
        return query;
    }

    public void editUserByUid(User user) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update user set nickname = ?, email = ?, telephone = ? where uid = ?";
        runner.update(sql, user.getNickname(), user.getEmail(),user.getTelephone(), user.getUid());
    }

    public User findUserByUid(String uid) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from user where uid = ?";
        User query = runner.query(sql, new BeanHandler<User>(User.class), uid);
        return query;
    }
}
