package com.zyyhbd.controller.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BaseServlet
 */
@WebServlet("/BaseServlet")
@SuppressWarnings("all")
public class BaseServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		
		req.setCharacterEncoding("UTF-8");
		
		try{
			//1.获得请求的method名称
			String methodName = req.getParameter("method");
			//2.获得当前被访问的对象的字节码对象
			Class clazz = this.getClass();
			//3.获得当前字节码对象中的指定方法
			Method method = clazz.getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
			//4.执行响应的功能方法(反射)
			method.invoke(this,req,resp);
		}catch(NoSuchMethodException|SecurityException | IllegalAccessException | IllegalArgumentException | InvocationTargetException e){
			e.printStackTrace();
		}
	}

}
