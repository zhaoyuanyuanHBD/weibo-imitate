package com.zyyhbd.controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.zyyhbd.entity.Message;
import com.zyyhbd.entity.User;
import com.zyyhbd.service.MessageService;
import com.zyyhbd.util.CommonsUtils;
import com.zyyhbd.vo.PageBean;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet("/MessageServlet")
public class MessageServlet extends BaseServlet {

    public void delMessageByCid(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        String cid = request.getParameter("cid");
        MessageService service = new MessageService();
        service.delMessageByCid(cid);
        findMessageByUid(request,response);
    }

    public void editMessageByCid(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        /*request.setCharacterEncoding("utf-8");*/
        response.setContentType("text/html;charset=utf-8");
        String cid = request.getParameter("cid");
        String contextStr = request.getParameter("context");
        String context = new String(contextStr.getBytes("iso8859-1"),"utf-8");

        MessageService service = new MessageService();
        service.editMessageByCid(cid,context);
        findMessageByUid(request,response);
    }

    public void findMessageByCid(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String cid = request.getParameter("cid");
        System.out.println("cid="+cid);
        MessageService service = new MessageService();
        Message message = service.findMessageByCid(cid);
        Gson gson = new Gson();
        String json = gson.toJson(message);
        Writer out = response.getWriter();
        out.write(json);
        out.flush();
        out.close();
    }

    public void findMessageByUid(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String uid = request.getParameter("uid");

        String currentPageString = request.getParameter("currentPage");
        if(currentPageString == null){
            currentPageString = "1";
        }
        int currentPage = Integer.parseInt(currentPageString);
        //每页显示的条数
        int currentCount = 4;
        MessageService service = new MessageService();
        PageBean<Message> pageBean = service.findMessageByUid(currentPage, currentCount,uid);
        request.setAttribute("pageBean",pageBean);
        request.getRequestDispatcher(request.getContextPath()+"/home.jsp").forward(request,response);

    }

    public void addMessage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        String context = request.getParameter("context");
        String uid = request.getParameter("uid");
        Message message = new Message();
        User user = new User();
        user.setUid(uid);
        message.setCid(CommonsUtils.getUUID());
        message.setContext(context);
        message.setUser(user);
        MessageService service = new MessageService();
        service.addMessage(message);
        response.sendRedirect(request.getContextPath()+"/find.jsp");
    }

    public void findAllMessage(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        MessageService service = new MessageService();
        List<Map<String, Object>> mapList = service.findAllMessage();
        List<Message> messageList = new ArrayList<Message>();
        for(Map<String, Object> map : mapList) {
            try {
                Message message = new Message();
                User user = new User();
                BeanUtils.populate(message, map);
                BeanUtils.populate(user, map);
                message.setUser(user);
                messageList.add(message);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
        }

        Gson gson = new Gson();
        String json = gson.toJson(messageList);

        PrintWriter writer = response.getWriter();
        writer.write(json);
        writer.flush();;
        writer.close();
    }

}
