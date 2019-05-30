<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Template</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section>
    <form style="margin-left:500px;margin-top:20px;" action="${pageContext.request.contextPath}/UserServlet" method="post">
        <input type="hidden" name="method" value="editUserByUid">
        <input type="hidden" name="uid" value="${user.uid}">
        <div class="form-group">
            <b>用户名：${user.username}</b>
        </div>
        <div class="form-group">
            <label for="user" stype="display:inline;">昵称：</label>
            <input type="text" class="form-control" id="user" name="nickname" value="${user.nickname}" style="display:inline;width:200px;"autocomplete="off" />
        </div>
        <div class="form-group">
            <label for="user" style="display:inline;">邮箱：</label>
            <input type="text" class="form-control" id="e-mail" name="email" value="${user.email}" style="display:inline;width:200px;"autocomplete="off" />
        </div>
        <div class="form-group">
            <label for="user" style="display:inline;">手机：</label>
            <input type="text" class="form-control" id="telephone" name="telephone" value="${user.telephone}" style="display:inline;width:200px;"autocomplete="off" />
        </div>

        <input type="submit" class="btn btn-primary" value="保存"></input>
    </form>
</section>
<jsp:include page="/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/lib/jquery/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
