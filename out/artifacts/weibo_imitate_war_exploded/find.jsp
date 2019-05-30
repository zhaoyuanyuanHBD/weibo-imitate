<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Find</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/weibo-icon.png">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">
    <script src="${pageContext.request.contextPath}/lib/jquery/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <style type="text/css">
        section{
            background-image: url(http://bpic.588ku.com/back_pic/03/71/88/2857b855cd13f58.jpg);
            background-size: 100% 100%;
        }
        .row {
            width: 100%;
        }
        .main-container{
            padding-left: 0;
            background: rgba(138, 169, 241, 0.5);
            display: flex;
            justify-content: space-between;
            padding-top: 20px;
        }
        .left{
            padding-left: 0;
            padding-right: 0;
        }
        .main-container .left .nav-list{
            width: 100%;
            list-style: none;
            padding-left: 0px;
            padding-right: 0px;
        }
        .main-container .left .nav-list li{
            height: 40px;
            line-height: 40px;
            text-align:center;
        }
        .main-container .left .nav-list li:hover{
            background: rgba(217, 229, 241, 0.5);
        }
        .main-container .center{
            padding-left: 0;
        }
        .main-container .right{
            background: white;
            height: 200px;
        }
        .right .category{
            display: flex;
            justify-content: space-around;
        }
        .panel-info-img{
            height: 70px;
            width: 70px;
            border-radius: 50%;
            border: 1px solid red;
        }
    </style>
    <script>
        $(function(){
            $.ajax({
                url:"${pageContext.request.contextPath}/MessageServlet?method=findAllMessage",
                type:"post",
                async:false,
                dataType:"json",
                success:function(res){
                    var content = "";
                    for(var i = 0; i < res.length; i++){
                        content+= "<div class='panel panel-info'>"
                                    +"<div class='panel-heading'>"
                                    +"<h3 class='panel-title'>"+res[i].user.nickname+"<span style='float:right;'>"+res[i].updatetime+"</span></h3>"
                                    +"</div>"
                                    +"<div class='panel-body'>"
                                    +"<div class='media'>"
                                    +"<div class='media-left'>"
                                    +"<img src='https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557115914162&di=f47d79943ce37dd69a2b9b9168fcc674&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Flarge%2F0078CUxfly1fwco0iu8mgj30e80e8myb.jpg' class='img-circle panel-info-img'>"
                                    +"</div>"
                                    +"<div class='media-body'>"
                                    +"<p style='white-space: pre-line'>"+res[i].context+"</p>"
                                    +"</div>"
                                    +"</div>"
                                    +"</div>"
                                    +"</div>"
                    }
                    $("#person-pennal").html(content);
                }
            })
        })

    </script>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section>
    <!-- 在这里编辑你的内容 -->
    <div class="row icon-container">
        <div class="col-md-9 main-container">
            <div class="col-md-2 left">
                <ul class="nav-list">
                    <li><a href="#">热门</a></li>
                    <li><a href="#">社会</a></li>
                    <li><a href="#">电影</a></li>
                    <li><a href="#">动漫</a></li>
                    <li><a href="#">音乐</a></li>
                    <li><a href="#">游戏</a></li>
                    <li><a href="#">电竞</a></li>
                    <li><a href="#">冲浪</a></li>
                    <li><a href="#">攀岩</a></li>
                </ul>
            </div>

            <!-- 用户模块 -->
            <div id="person-pennal" class="col-md-8 center">
                <!-- 单个用户模块 -->

            </div>
            <div class="col-md-2 right">
                <h4>热门话题分类</h4>
                <div class="category">
                    <button type="button" class="btn btn-link">动漫</button>
                    <button type="button" class="btn btn-link">体育</button>
                </div>
                <div class="category">
                    <button type="button" class="btn btn-link">攀岩</button>
                    <button type="button" class="btn btn-link">冲浪</button>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>