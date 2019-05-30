<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">

<header class="row">
    <div class="col-md-2 col-xs-2 logo nav-bar">
        <a href="#">
            <i class="fa fa-weibo fa-3x"></i>
            <span class="title">weibo</span>
        </a>
    </div>
    <div class="col-md-4 col-xs-5 nav-title">
        <ul class="nav nav-pills">
            <li>
                <a href="${pageContext.request.contextPath}/index.jsp">首页</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/topic.jsp">话题</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/find.jsp">发现</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/edit.jsp">编辑</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/setting.jsp">设置</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/MessageServlet?method=findMessageByUid&uid=${user.uid}">个人中心</a>
            </li>
        </ul>
    </div>
    <div class="col-md-3 col-xs-3 input-group nav-bar">
        <input type="text" class="form-control" placeholder="Search for...">
        <span class="input-group-btn">
        	<button class="btn btn-default" type="button">Go!</button>
      	</span>
    </div>
    <div class="col-md-2 col-xs-1 nav-bar nav-hidden">
        <a href="#" class="btn btn-default" role="button">
            <i class="fa fa-plus"></i>
        </a>
        <a href="#" class="btn btn-default" role="button">
            <i class="fa fa-bell-o"></i>
        </a>
        <a href="${pageContext.request.contextPath}/MessageServlet?method=findMessageByUid&uid=${user.uid}" class="btn btn-default" role="button">
            <i class="">${user==null?"登录":user.nickname}</i>
        </a>
    </div>
    <div class="col-md-1 col-xs-1 dropdown nav-bar nav-hidden">
        <a href="" role="button" class="dropdown-toggle" type="button" id="dropdownMenuUser" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <img src="${pageContext.request.contextPath}/img/user/user.jpg" alt="user" class="img-circle" style="height: 36px">
            <ul class="dropdown-menu drop-user" aria-labelledby="dropdownMenuUser" style="min-width: 120px;">
                <li>
                    <a href="${pageContext.request.contextPath}/MessageServlet?method=findMessageByUid&uid=${user.uid}">
                        <span class="glyphicon glyphicon-home user-icon" aria-hidden="true"></span>
                        <span>我的主页</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/setting.jsp">
                        <span class="glyphicon glyphicon-cog user-icon" aria-hidden="true"></span>
                        <span>账号设置</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-heart user-icon" aria-hidden="true"></span>
                        <span>我的收藏</span>
                    </a>
                </li>
                <li role="separator" class="divider"></li>
                <li>
                    <a href="${pageContext.request.contextPath}/UserServlet?method=logout">
                        <span class="glyphicon glyphicon-off user-icon" aria-hidden="true"></span>
                        <span>安全退出</span>
                    </a>
                </li>
            </ul>
        </a>
    </div>
</header>
