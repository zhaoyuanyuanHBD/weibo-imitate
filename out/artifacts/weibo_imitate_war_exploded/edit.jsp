<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Template</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/weibo-icon.png">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <style>
        section{
            background-image: url(http://bpic.588ku.com/back_pic/03/71/88/2857b855cd13f58.jpg);
            background-size: 100% 100%;
            width: 100%;
        }
        .form-control{
            font-size: 18px;
        }
    </style>
    <script>
        $(function(){
            $("#send").click(function(){
                var context = $("#context").val();
                $.ajax({
                    url:"${pageContext.request.contextPath}/MessageServlet?method=addMessage&uid=${user.uid}",
                    data:{"context":context},
                    async:true,
                    type:"post",
                    success:function (res) {
                        window.location.href="${pageContext.request.contextPath}/find.jsp";
                    }

                })
            })
        })
    </script>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section>
    <!-- 在这里编辑你的内容 -->
    <div class="row icon-container">
        <div class="col-md-9 main-container article">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">有什么新鲜事想告诉大家呢？</h3>
                </div>
                <div class="panel-body">
                    <%--<form role="form">--%>
                        <div class="form-group">
                            <textarea id="context" class="form-control" rows="9" style="resize:none;white-space: pre-wrap;" ></textarea>
                        </div>
                        <input id="send" type="button" value="发送" class="btn btn-info btn-lg pull-right">
                    <%--</form>--%>
                </div>
                </div>
            </div>

        </div>
    </div>
</section>
<jsp:include page="/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/lib/jquery/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>