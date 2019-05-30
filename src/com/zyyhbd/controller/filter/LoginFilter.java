package com.zyyhbd.controller.filter;

import com.zyyhbd.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        //获得请求的路径
        String uri = request.getRequestURI();
        String path = request.getContextPath();
        String method = request.getParameter("method");

        String valPath = uri.substring(path.length());
        if ("/login.jsp".equals(valPath) || "/index.jsp".equals(valPath) || "/find.jsp".equals(valPath)
                || "/register.jsp".equals(valPath) || "/registerSuccess.jsp".equals(valPath)
                || "findAllMessage".equals(method) || "register".equals(method)
                || "checkUsername".equals(method) || "login".equals(method)){
            chain.doFilter(request, response);
        } else {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if (user != null){
                chain.doFilter(request, response);
            } else {
                response.sendRedirect("/login.jsp");
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
