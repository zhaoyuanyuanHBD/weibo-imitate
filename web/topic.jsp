<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Topic</title>
    <link rel="shortcut icon" type="image/x-icon" href="../img/weibo-icon.png">
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap-3.3.7/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../lib/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/template.css">
</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>

    <section>
        <!-- 在这里编辑你的内容 -->
        <div class="nav-title btn-group col-lg-1" float="right">
            <ul class="nav nav-pills nav-stacked">
                <li>
                    <a href="#">热门</a>
                </li>
                <li>
                    <a href="#">头条</a>
                </li>
                <li>
                    <a href="#">新鲜事</a>
                </li>
                <li>
                    <a href="#">榜单</a>
                </li>
                <li>
                    <a href="#">搞笑</a>
                </li>
                <li>
                    <a herf="'#">社会</a>
                </li>
                <li>
                    <a herf="'#">时尚</a>
                </li>
            </ul>
            <div class="dropup">
                <button class="btn btn-default  " type="button" id="dropdownMenu2" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    ...更多
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <li><a href="#">话题</a></li>
                    <li><a href="#">找人</a></li>
                    <li><a href="#">电影</a></li>
                    <li><a href="#">股票</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 col-xs-5 nav-title">
            <ul class="nav nav-pills">
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>话题榜</a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>本地</a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-flag" aria-hidden="true"></span>新时代</a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-bullhorn" aria-hidden="true"></span> 社会</a>
                </li>
                <li>
                    <a href="#">
                        <span class="glyphicon glyphicon-globe "aria-hidden=" true"></span>科普</a>
                </li>
                <li>
                    <a herf="">
                        <span class="glyphicon glyphicon-yen" aria-hidden="true"></span>财经</a>
                </li>
                <li>
                    <a herf="#">
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>...更多</a>
                </li>
            </ul>
        </div>
        <!--话题-->
        <section class="table-container container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <table class="table table-hover">
                        <tr>
                            <td colspan="7" herf="#">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src="https://wx1.sinaimg.cn/large/6c9f96b9ly1g2mxv7gdjdj20e80e875w.jpg"
                                             width="90" height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#爱豆出圈神图#</p>
                                        <p>快来分享爱豆绝美出圈神图!</p>
                                        <p>阅读量：1.2亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx2.sinaimg.cn/large/006GunaJly1g2mvwz52dij30660663zg.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div claass="col-md-9">
                                        <p>#断桥上人人人人人人#</p>
                                        <p>5月1日，浙江杭州西湖景区人山人海，据报道，小长假第一天...</p>
                                        <p>阅读量：1.9亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx3.sinaimg.cn/large/66eeadffly1g1va9ensjdj20e80e8gnw.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#新青年耀青春#</p>
                                        <p>中国青年报将联手湖南卫视在5月2日晚7：30推出“新青年 耀青春”... </p>
                                        <p>阅读量：1.8亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx1.sinaimg.cn/large/975affcdly1g2du8kx9ogj20u00u0wk4.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>  #湖南卫视五四文艺晚会#</p>
                                        <p> 新时代青年，风华正茂，努力奔跑，是青春最好的姿态。</p>
                                        <p>阅读量：1.6亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx2.sinaimg.cn/large/a716fd45ly1g2g2jz8tocj20g60g6thp.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#我的十四岁#</p>
                                        <p>一生中唯一的十四岁，充满活力的十四岁。</p>
                                        <p>阅读量：2亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx2.sinaimg.cn/large/7dced06cly1g2dwrvuwrhj20nr0nrx3u.jpg" height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#向往的生活#</p>
                                        <p>由特仑苏冠名的《向往的生活》第三季“湘西篇”正在解锁...</p>
                                        <p>阅读量：3亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx3.sinaimg.cn/large/60718250ly1g2mmg3zf36j206d06ddjf.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#一二线城市女性购房者增多#</p>
                                        <p>有报告显示，2018年女性购房者占比高达46.7％,...</p>
                                        <p>阅读量：1.3亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src="https://wx2.sinaimg.cn/large/61e7f4aaly1g2mx94434sj20c00c0n6g.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#二乔三傻结婚#</p>
                                        <p>“二乔”乔·乔纳斯（Joe Jonas）和“三傻”索菲·特纳结婚了...</p>
                                        <p>阅读量：2.2亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src="https://wx4.sinaimg.cn/large/60718250ly1g2mv51j1uij20dz0dz47y.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#富翁花百万让孩子进斯坦福#</p>
                                        <p>外媒曝步长制药公司董事长赵涛花650万美元让孩子进斯坦福...</p>
                                        <p>阅读量：2.5亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img src=" https://wx4.sinaimg.cn/large/d1046db2ly1g2dlpgbjdoj20u00u04qt.jpg" width="90"
                                             height="90">
                                    </div>
                                    <div class="col-md-9">
                                        <p>#五四晚会#</p>
                                        <p>  致敬五四百年，青春再次出发！《我们都是追梦人》...</p>
                                        <p>阅读量：1.1亿</p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-3">
                    <table class="table table-hover">
                        <tr>
                            <h5>我的话题</h5>
                        </tr>
                        <tr>
                            <td colspan="4">#微博粉丝认证号#</td>
                        </tr>
                        <tr>
                            <td colspan="4">#微博个性皮肤#</td>
                        </tr>
                        <tr>
                            <td colspan="4">#复联4；终局...</td>
                        </tr>
                        <tr>
                            <td colspan="4"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>

    <jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
