<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/weibo-icon.png">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/jquery/jquery.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/js/bootstrap.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script type="text/javascript" src="layer/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript">

        function editMsg(cid) {

            var content = "";

            $.post(
                "${pageContext.request.contextPath}/MessageServlet?method=findMessageByCid",
                {"cid": cid},
                function (data) {

                    console.log(data);
                    content = "<form action='${pageContext.request.contextPath}/MessageServlet' method='post' >"
                        + "<input type='hidden' name='method' value='editMessageByCid'>"
                        + "<input type='hidden' name='cid' value='" + data.cid + "'>"
                        + "<input type='hidden' name='uid' value='${user.uid}'>"
                        + "<div class='panel-body'>"
                        + "<div class='form-group'>"
                        + "<textarea id='context' name='context' class='form-control' rows='9' style='resize:none;'>" + data.context + "</textarea>"
                        + "</div>"
                        + "<input id='send' type='submit' value='编辑' class='btn btn-info btn-lg pull-right'>"
                        + "</div>"
                        + "</form>";

                    layer.open({
                        type: 1,
                        area: ['600px', '360px'],
                        shadeClose: true, //点击遮罩关闭
                        content: '<div style="padding:20px;">' + content + '</div>'
                    });
                },
                "json"
            );

        };

    </script>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section>
    <div class="row" style="width: 100%; margin: 0px;">
        <div class="head-info">
            <img src="${pageContext.request.contextPath}\img\user\user.jpg" class="img-circle">
            <p class="nickname">${user.username}<i class="fa fa-mars" style="margin-left: 8px;"></i></p>
            <p class="self-intro">一句话介绍自己吧，让别人更了解你</p>
            <div class="row head-nav">
                <span><a href="#">我的主页</a></span>
                <span><a href="#">我的相册</a></span>
                <span><a href="#">管理中心</a></span>
            </div>
        </div>
        <div class="body-info">

            <div class="body-right col-md-12">
                <div class="right-header">
                    <div class="right-navbar">
                        <ul>
                            <li><a href="#">全部</a></li>
                            <li><a href="#">更多</a></li>
                        </ul>
                    </div>
                    <div class="right-search">
                        <input placeholder="搜索我的微博">
                    </div>
                </div>
                <div class="right-content">
                    <div class="article-list">
                        <div style="width: 100%;">

                            <ul id="messageInfo">

                                <c:forEach items="${pageBean.list}" var="message">
                                    <li>
                                        <div class="article-list-up">
                                            <h4>${message.updatetime}</h4>
                                            <div class="msg">
                                                <p style="white-space: pre-line">${message.context}</p>
                                            </div>
                                        </div>
                                        <div class="article-list-bottom">
                                            <button id="editMsg" onclick="editMsg('${message.cid}')">
                                                编辑
                                            </button>
                                            <button>
                                                <a href="${pageContext.request.contextPath}/MessageServlet?method=delMessageByCid&cid=${message.cid}&uid=${user.uid}">删除</a>
                                            </button>
                                        </div>
                                    </li>
                                </c:forEach>

                            </ul>

                            <%--分页--%>
                            <ul class="pagination">

                                <!-- 显示上一页 -->
                                <c:if test="${pageBean.currentPage==1 }">
                                    <li class="disabled">
                                        <a href="javascript:void(0);" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${pageBean.currentPage!=1 }">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/MessageServlet?method=findMessageByUid&uid=${user.uid}&currentPage=${pageBean.currentPage-1}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>

                                <!-- 显示每一页 -->
                                <c:forEach begin="1" end="${pageBean.totalPage }" var="page">
                                    <!-- 判断是否是当前页 -->
                                    <c:if test="${pageBean.currentPage == page }">
                                        <li class="active">
                                            <a href="javascript:void(0);" aria-label="Previous">${page }</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${pageBean.currentPage != page }">
                                        <li>
                                            <a href="${pageContext.request.contextPath }/MessageServlet?method=findMessageByUid&uid=${user.uid}&currentPage=${page}"
                                               aria-label="Previous">${page }</a>
                                        </li>
                                    </c:if>
                                </c:forEach>

                                <!-- 显示下一页 -->
                                <c:if test="${pageBean.currentPage == pageBean.totalPage}">
                                    <li class="disabled">
                                        <a href="javascript:void(0);" aria-label="Previous">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${pageBean.currentPage != pageBean.totalPage}">
                                    <li>
                                        <a href="${pageContext.request.contextPath }/MessageServlet?method=findMessageByUid&uid=${user.uid}&currentPage=${pageBean.currentPage+1}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</section>
<%--<jsp:include page="/footer.jsp"></jsp:include>--%>

</body>
</html>
