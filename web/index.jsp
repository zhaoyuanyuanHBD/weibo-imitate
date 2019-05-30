<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>首页</title>
  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/weibo-icon.png">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome-4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/template.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<section class="container">
  <div class="left-banner">
    <div class="slides">
      <div id="carousel-generic" class="carousel slide" data-ride="carousel">
        <!-- 下标 -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-generic" data-slide-to="1"></li>
          <li data-target="#carousel-generic" data-slide-to="2"></li>
          <li data-target="#carousel-generic" data-slide-to="3"></li>
        </ol>
        <!-- 轮播图片 -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <a href="#" style="text-decoration: none">
              <img src="${pageContext.request.contextPath}/img/index/banner-1.gif" alt="banner-1" class="banner">
            </a>
          </div>
          <div class="item">
            <a href="#" style="text-decoration: none">
              <img src="${pageContext.request.contextPath}/img/index/banner-2.jpg" alt="banner-2" class="banner">
            </a>
          </div>
          <div class="item">
            <a href="#" style="text-decoration: none">
              <img src="${pageContext.request.contextPath}/img/index/banner-3.jpg" alt="banner-3" class="banner">
            </a>
          </div>
          <div class="item">
            <a href="#" style="text-decoration: none">
              <img src="${pageContext.request.contextPath}/img/index/banner-4.jpg" alt="banner-4" class="banner">
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="right-banner">
    <div class="item-list">
      <div class="item">
        <a href="#" style="text-decoration: none">
          <img src="${pageContext.request.contextPath}/img/index/banner-5.jpg" alt="banner-5" class="banner">
        </a>
      </div>
      <div class="item">
        <a href="#" style="text-decoration: none">
          <img src="${pageContext.request.contextPath}/img/index/banner-8.jpg" alt="banner-8" class="banner">
        </a>
      </div>
    </div>
    <div class="item-list">
      <div class="item">
        <a href="#" style="text-decoration: none">
          <img src="${pageContext.request.contextPath}/img/index/banner-6.jpg" alt="banner-6" class="banner">
        </a>
      </div>
      <div class="item">
        <a href="#" style="text-decoration: none">
          <img src="${pageContext.request.contextPath}/img/index/banner-9.jpg" alt="banner-9" class="banner">
        </a>
      </div>
    </div>
  </div>
</section>
<section class="card">
  <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-7">
      <div class="panel panel-default">
        <div class="panel-heading">
          <a href="#" class="panel-title"><b>2019 年，我们该如何重装 Windows 系统 | 实用技巧</b></a>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-8">
              <a href="#" style="text-decoration: none;color: black;">
                <p>大多数人第一次接触到的计算机都是 Windows 系统的，而早年电脑遇到中病毒、
                  系统问题、无法启动等问题时，由于重装系统简单粗暴，无论懂不懂的人都会说
                  上一句「是不是要重装系统了？」似乎这是拯救电脑的一剂灵药。
                </p>
              </a>
            </div>
            <div class="col-md-4">
              <a href="article_details.html" class="thumbnail">
                <img src="${pageContext.request.contextPath}/img/card/card-1.png" alt="${pageContext.request.contextPath}.">
              </a>
            </div>
          </div>
          <div class="row">
            <div class="col-md-1"><small>Akashi</small></div>
            <div class="col-md-1">
              <small>
                <span class="glyphicon glyphicon-heart" aria-hidden="true">&nbsp;27</span>
              </small>
            </div>
            <div class="col-md-1">
              <small>
                <span class="glyphicon glyphicon-comment" aria-hidden="true">&nbsp;32</span>
              </small>
            </div>
            <div class="col-md-2"><small>3小时前</small></div>
          </div>
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <a href="#" class="panel-title"><b>3 个快速提效的 PDF 制作工作流 | 实用技巧</b></a>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-8">
              <a href="#" style="text-decoration: none;color: black;">
                <p>PDF 读起来也许舒服，但是制作起来可能折磨过不少人。

                  由于排版稳定，PDF 对阅读的人比较友好，但固定尺寸对于制作来说较为麻烦，
                  换台设备阅读可能就要切分重排……不幸的是，我们不一定总是能拿到符合要求的
                  PDF，常常免不了成为那个制作 PDF 的人。
                </p>
              </a>
            </div>
            <div class="col-md-4">
              <a href="#" class="thumbnail">
                <img src="${pageContext.request.contextPath}/img/card/card-2.png" alt="...">
              </a>
            </div>
          </div>
          <div class="row">
            <div class="col-md-1"><small>Asuka</small></div>
            <div class="col-md-1">
              <small>
                <span class="glyphicon glyphicon-heart" aria-hidden="true">&nbsp;362</span>
              </small>
            </div>
            <div class="col-md-1">
              <small>
                <span class="glyphicon glyphicon-comment" aria-hidden="true">&nbsp;245</span>
              </small>
            </div>
            <div class="col-md-2"><small>4小时前</small></div>
          </div>
        </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <a href="#" class="panel-title"><b>一切只为给你更好的阅读体验，老牌 RSS 阅读器 Reeder 更新 4.0</b></a>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-8">
              <a href="#" style="text-decoration: none;color: black;">
                <p>
                  即使如今很难再称 Reeder 是 iOS/macOS 平台下最好的 RSS 阅读器，但是作为一款知名的
                  「骨灰级」产品，它的每一次大版本更新都备受关注。时隔四年，我们终于迎来了 Reeder 的
                  4.0 双版本更新，而这次，它似乎在暗示着自身定位些许的变化，一起来看看。
                </p>
              </a>
            </div>
            <div class="col-md-4">
              <a href="#" class="thumbnail">
                <img src="${pageContext.request.contextPath}/img/card/card-3.png" alt="...">
              </a>
            </div>
          </div>
          <div class="row">
            <div class="col-md-1"><small>Gakki</small></div>
            <div class="col-md-1">
              <small>
                <span class="glyphicon glyphicon-heart" aria-hidden="true">&nbsp;527</span>
              </small>
            </div>
            <div class="col-md-1">
              <small>
                <span class="glyphicon glyphicon-comment" aria-hidden="true">&nbsp;432</span>
              </small>
            </div>
            <div class="col-md-2"><small>12小时前</small></div>
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