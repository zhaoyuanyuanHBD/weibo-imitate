package com.zyyhbd.dao;

import com.zyyhbd.entity.Message;
import com.zyyhbd.util.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class MessageDao {

    public void addMessage(Message message) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into message (cid, context, uid) value (?,?,?)";
        runner.update(sql, message.getCid(), message.getContext(), message.getUser().getUid());
    }

    public List<Map<String, Object>> findAllMessage() throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "SELECT m.`cid`, m.`context`,m.`updatetime`,u.`nickname` FROM message m, USER u WHERE m.`uid`= u.`uid` ORDER BY updatetime DESC;";
        List<Map<String, Object>> query = runner.query(sql, new MapListHandler());
        return query;
    }

    public List<Message> findMessageByUid(int index, int currentCount, String uid) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "SELECT * FROM message WHERE uid = ? ORDER BY updatetime DESC LIMIT ?,?";
        List<Message> query = runner.query(sql, new BeanListHandler<Message>(Message.class), uid, index, currentCount);
        return query;
    }

    public Message findMessageByCid(String cid) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from message where cid = ?";
        Message query = runner.query(sql, new BeanHandler<Message>(Message.class), cid);
        return query;
    }

    public void editMessage(String cid, String context) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update message set context = ? where cid = ?";
        runner.update(sql, context, cid);
    }

    public void delMessageByCid(String cid) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "delete from message where cid = ?";
        runner.update(sql, cid);
    }

    public int getTotalCount(String uid) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select count(*) from message where uid = ?";
        Long query = (Long)runner.query(sql,new ScalarHandler(), uid);
        return query.intValue();
    }
}
