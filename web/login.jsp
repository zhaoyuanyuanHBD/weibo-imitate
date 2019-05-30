<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Template</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/weibo-icon.png">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/template.css">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section>
    <div class="wrap" id="wrap">

        <!-- 头部提示信息 -->

        <div class="middle-box text-center loginscreen   animated fadeInDown" style="width: 30em; margin: auto;">
            <div>
                <h3>欢迎登录</h3>

                <form id="myform" class="m-t" role="form" action="${pageContext.request.contextPath}/UserServlet" method="post">
                    <input type="hidden" name="method" value="login">
                    <div class="form-group">
                        用户名：<input type="text" class="form-control" name="username" required=""/>
                    </div>
                    <div class="form-group">
                        密码：<input type="password" class="form-control"id="password" name="password" required=""/>
                    </div>
                    <input type="submit"  class="btn btn-primary block full-width m-b" value="登录"></input>
                    <a class="btn btn-sm btn-white btn-block" href="${pageContext.request.contextPath}/register.jsp">注册</a>
                </form>

            </div>

        </div>
    </div>
</section>
<jsp:include page="/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/lib/jquery/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>