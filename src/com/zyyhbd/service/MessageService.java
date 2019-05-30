package com.zyyhbd.service;

import com.zyyhbd.dao.MessageDao;
import com.zyyhbd.entity.Message;
import com.zyyhbd.vo.PageBean;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class MessageService {

    public void addMessage(Message message) {
        MessageDao dao = new MessageDao();
        try {
            dao.addMessage(message);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> findAllMessage() throws SQLException {
        MessageDao dao = new MessageDao();
        List<Map<String, Object>> mapList = dao.findAllMessage();
        return mapList;
    }

    public PageBean<Message> findMessageByUid(int currentPage, int currentCount, String uid) {

        //封装PageBean对象
        PageBean<Message> pageBean=new PageBean<Message>();

        //当前页
        pageBean.setCurrentPage(currentPage);

        //每页显示的条数
        pageBean.setCurrentCount(currentCount);

        //总条数
        MessageDao dao = new MessageDao();
        int totalCount=0;
        try{
            totalCount=dao.getTotalCount(uid);
        }catch(SQLException e){
            e.printStackTrace();
        }
        pageBean.setTotalCount(totalCount);

        //总页数
        int totalPage=(int)Math.ceil(1.0*totalCount/currentCount);
        pageBean.setTotalPage(totalPage);

        //每页显示的数据
        int index=(currentPage-1)*currentCount;
        List<Message> messageList = null;
        try{
            messageList=dao.findMessageByUid(index,currentCount,uid);
        }catch(SQLException e){
            e.printStackTrace();
        }

        pageBean.setList(messageList);
        return pageBean;

    }

    public Message findMessageByCid(String cid) {
        MessageDao dao = new MessageDao();
        Message message = null;
        try {
            message = dao.findMessageByCid(cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return message;

    }

    public void editMessageByCid(String cid, String context) {
        MessageDao dao = new MessageDao();
        try {
            dao.editMessage(cid, context);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delMessageByCid(String cid) {
        MessageDao dao = new MessageDao();
        try {
            dao.delMessageByCid(cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
