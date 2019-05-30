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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">
    <script src="${pageContext.request.contextPath}/lib/jquery/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js" type="text/javascript"></script>
    <script>
        $(function(){

            $.validator.addMethod(
                //规则的名称
                "checkUsername",
                //校验的函数
                function(value, element, params){
                    //value:输入的内容
                    //element:被校验的元素对象
                    //params:规则对应的参数值
                    //对输入的username进行ajax校验

                    var flag = false;

                    $.ajax({
                        url:"${pageContext.request.contextPath}/UserServlet?method=checkUsername",
                        type:"POST",
                        async:false,
                        data:{"username":value},
                        dataType:"json",
                        success:function(res){
                            flag = res.isExist;
                        }
                    });

                    return !flag;
                }
            );

            $("#myform").validate({
                rules:{
                    "username":{
                        "required":true,
                        "checkUsername":true
                    },
                    "password":{
                        "required":true,
                        "rangelength":[6,16]
                    },
                    "repassword":{
                        "required":true,
                        "rangelength":[6,16],
                        "equalTo":"#password"
                    },
                    "email":{
                        "required":true,
                        "email":true
                    },
                    "telephone":{
                        "required":true,
                        "digits":true
                    }
                },
                messages:{
                    "username":{
                        "required":"用户名不能为空",
                        "checkUsername":"用户名已存在"
                    },
                    "password":{
                        "required":"密码不能为空",
                        "rangelength":"密码为6到16位"
                    },
                    "repassword":{
                        "required":"密码不能为空",
                        "rangelength":"密码为6到16位",
                        "equalTo":"两次密码不一致"
                    },
                    "email":{
                        "required":"邮箱不能为空",
                        "email":"邮箱格式不正确"
                    },
                    "telephone":{
                        "required":"电话不能为空",
                        "digits":"请输入正确的电话格式"
                    }
                }
            });
        });
    </script>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section>
    <div class="wrap" id="wrap">

        <!-- 头部提示信息 -->

        <div class="middle-box text-center loginscreen   animated fadeInDown" style="width: 30em; margin: auto;">
            <div>
                <h3>欢迎注册</h3>

                <form id="myform" class="m-t" role="form" action="${pageContext.request.contextPath}/UserServlet" method="post">
                    <input type="hidden" name="method" value="register">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="设置用户名" name="username" required=""/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="设置密码" id="password" name="password" required=""/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="确认密码" name="repassword" required=""/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="输入昵称" name="nickname" required=""/>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="输入邮箱账号" name="email" required=""/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="输入电话" name="telephone" required=""/>
                    </div>
                    <input type="submit"  class="btn btn-primary block full-width m-b" value="注册"></input>
                    <a class="btn btn-sm btn-white btn-block" th:href="login" href="${pageContext.request.contextPath}/login.jsp">登  录</a>
                </form>

            </div>

        </div>
    </div>
</section>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>