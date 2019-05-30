package com.zyyhbd.service;

import com.zyyhbd.dao.UserDao;
import com.zyyhbd.entity.User;

import java.sql.SQLException;

public class UserService {

    public boolean register(User user) {
        UserDao dao = new UserDao();
        int register = 0;
        try {
            register = dao.register(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return register>0?true:false;
    }

    public boolean checkUsername(String username){
        UserDao dao = new UserDao();
        Long isExist = 0L;
        try{
            isExist=dao.checkUsername(username);
        }catch(SQLException e){
            e.printStackTrace();
        }
        return isExist> 0 ? true : false;
    }

    public User login(String username,String password){
        UserDao dao = new UserDao();
        User user = null;
        try{
            user = dao.login(username, password);
        }catch(SQLException e){
            e.printStackTrace();
        }
        return user;
    }

    public void editUserByUid(User user) {
        UserDao dao = new UserDao();
        try {
            dao.editUserByUid(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User findUserByUid(String uid) {
        UserDao dao = new UserDao();
        User user = null;
        try {
            user = dao.findUserByUid(uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
