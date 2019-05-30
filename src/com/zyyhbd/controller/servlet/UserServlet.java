package com.zyyhbd.controller.servlet;

import com.zyyhbd.entity.User;
import com.zyyhbd.service.UserService;
import com.zyyhbd.util.CommonsUtils;
import com.zyyhbd.util.MD5Utils;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {

    public void logout(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        HttpSession session=request.getSession();
        session.removeAttribute("user");
        response.sendRedirect(request.getContextPath()+"/login.jsp");
    }

    public void editUserByUid(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException, SQLException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        Map<String, String[]> parameterMap = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user, parameterMap);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        UserService service = new UserService();
        service.editUserByUid(user);
        user = service.findUserByUid(user.getUid());
        session.setAttribute("user",user);
        /*response.sendRedirect(request.getContextPath()+"/home.jsp");*/
        MessageServlet messageServlet = new MessageServlet();
        messageServlet.findMessageByUid(request,response);

    }


    public void register(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String nickname = request.getParameter("nickname");
        String telephone = request.getParameter("telephone");

        User user = new User();
        String passwordStr = MD5Utils.md5(password);

        user.setUid(CommonsUtils.getUUID());
        user.setUsername(username);
        user.setPassword(passwordStr);
        user.setNickname(nickname);
        user.setEmail(email);
        user.setTelephone(telephone);

        UserService service = new UserService();
        boolean register = service.register(user);
        if (register) {
            System.out.println("注册成功");
            response.sendRedirect(request.getContextPath()+"registerSuccess.jsp");
        } else {
            System.out.println("注册失败");
        }
    }

    public void checkUsername(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        String username=request.getParameter("username");

        UserService service=new UserService();
        boolean isExist=service.checkUsername(username);
        String json="{\"isExist\":"+isExist+"}";
        response.getWriter().write(json);
    }

    public void login(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{

        HttpSession session=request.getSession();

        //获得用户名和密码
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        //对密码进行加密
        password = MD5Utils.md5(password);

        //将用户名和密码传递给service层
        UserService service=new UserService();
        User user=service.login(username,password);
        //判断用户是否自动登录，user是否为null

        if (user!=null){
            //将user放到session中
            session.setAttribute("user",user);

            //重定向到首页
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }else{
            request.setAttribute("loginError","用户名或密码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }

}
