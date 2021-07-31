<!DOCTYPE html>
<html lang="en">
<head>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="description" content="CNode：Node.js专业中文社区">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="nodejs, node, express, connect, socket.io">
    <!-- see http://smerity.com/articles/2013/where_did_all_the_http_referrers_go.html -->
    <meta name="referrer" content="always">


    <meta name="author" content="EDP@TaoBao">

    <meta property="wb:webmaster" content="617be6bd946c6b96">


    <link title="RSS" type="application/rss+xml" rel="alternate" href="/rss">


    <link rel="icon" href="//static2.cnodejs.org/public/images/cnode_icon_32.png" type="image/x-icon">


    <!-- style -->
    <link rel="stylesheet" href="//static2.cnodejs.org/public/stylesheets/index.min.23a5b1ca.min.css" media="all">


    <!-- scripts -->
    <script async="" src="https://www.google-analytics.com/analytics.js"></script><script src="//static2.cnodejs.org/public/index.min.f7c13f64.min.js"></script>



    <title> 设置 </title>

    <meta content="_csrf" name="csrf-param">
    <meta content="eDpMRS4m-yC3PIzCI1bniN4vrIK8BZlgbX-w" name="csrf-token">
</head>
<body>
<!-- navbar -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="/">

                <img src="//static2.cnodejs.org/public/images/cnodejs_light.svg">

            </a>

            <form id="search_form" class="navbar-search" action="/">
                <input type="text" id="q" name="q" class="search-query span3" value="">
            </form>
            <ul class="nav pull-right">
                <li><a href="/">首页</a></li>

                <li>
                    <a href="/topic/homepage">

                        消息
                    </a>
                </li>



                <li><a href="/todo" target=""> Todo </a></li>


                <li><a href="/Setting">设置</a></li>
                <li>
                    <a href="/login"> 切换用户 </a>
                </li>

            </ul>
            <a class="btn btn-navbar" id="responsive-sidebar-trigger">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
        </div>
    </div>
</div>
<div id="main">
    <div id="sidebar">

        <div class="panel">

            <div class="header">
                <span class="col_fade">个人信息</span>
            </div>
            <div class="inner">
                <div class="user_card">
                    <div>
                        <a class="user_avatar" href="/topic">
                            <img src="/${user.avatar}" title="Heimaojinz">
                        </a>
                        <span class="user_name"><a class="dark" href="/topic">${user.username}</a></span>

                        <div class="board clearfix">
                            <div class="floor">
<#--                                <span class="big">积分: 25 </span>-->
                            </div>
                        </div>
                        <div class="space clearfix"></div>
                        <span class="signature">
        “

            ${user.signature}

        ”
    </span>
                    </div>
                </div>


                <script>
                    $(document).ready(function () {
                        $('.follow_btn').click(function () {
                            var $me = $(this);
                            var action = $me.attr('action');
                            var params = {
                                follow_id: '609cecd44d20cb9b9f69304c',
                                _csrf: 'eDpMRS4m-yC3PIzCI1bniN4vrIK8BZlgbX-w'
                            };
                            $.post('/user/' + action, params, function (data) {
                                if (data.status === 'success') {
                                    var $btns = $('.follow_btn');
                                    if (action === 'follow') {
                                        $btns.html('取消关注');
                                        $btns.attr('action', 'un_follow');
                                    } else {
                                        $btns.html('加入关注');
                                        $btns.attr('action', 'follow');
                                    }
                                    $btns.toggleClass('btn-success');
                                }
                            }, 'json');
                        });
                    });
                </script>


            </div>

        </div>


        <div class="panel">
            <div class="inner">
                <a href="/topic_index/add" id="create_topic_btn">
                    <span class="span-success">发布话题</span>
                </a>
            </div>
        </div>










        <div class="panel">
            <div class="header">
                <span class="col_fade">友情社区</span>
            </div>
            <div class="inner">
                <ol class="friendship-community">
                    <li>
                        <a href="https://ruby-china.org/" target="_blank">
                            <img src="//static2.cnodejs.org/public/images/ruby-china-20150529.png">
                        </a>
                    </li>
                    <div class="sep10"></div>
                    <li>
                        <a href="http://golangtc.com/" target="_blank">
                            <img src="//static2.cnodejs.org/public/images/golangtc-logo.png">
                        </a>
                    </li>
                    <div class="sep10"></div>
                    <li>
                        <a href="http://phphub.org/" target="_blank">
                            <img src="//static2.cnodejs.org/public/images/phphub-logo.png">
                        </a>
                    </li>
                </ol>
            </div>
        </div>
        <div class="panel">
            <div class="header">
                <span class="col_fade">客户端二维码</span>
            </div>
            <div class="inner cnode-app-download">
                <img width="200" src="//static.cnodejs.org/FtG0YVgQ6iginiLpf9W4_ShjiLfU">
                <br>
                <a href="https://github.com/soliury/noder-react-native" target="_blank">客户端源码地址</a>
            </div>
        </div>

    </div>


    <div id="content">
        <div class="panel">
            <div class="header">
                <ul class="breadcrumb">
                    <li><a href="/">主页</a><span class="divider">/</span></li>
                    <li class="active">设置</li>
                </ul>
            </div>
            <div class="inner">
                <form id="setting_form" class="form-horizontal" action="/setting/update" method="post">

                    <script>
                        $(document).on("click","div>img",function()
                        { $("#logo").attr("src",$(this).attr("src"));$("#logo1").attr("value",$(this).attr("src")); })
                    </script>

                    <div class="control-group">
                    <label class="control-label" for="avatar"> 修改头像 </label>
                        &emsp;&emsp;
                        <img id='logo' src='/${user.avatar}' width="75" height="75"/>
                    <input  id='logo1' name="avatar" value="/${user.avatar}"  type="hidden">

                        <br>
                        <br>
                        <label class="control-label" for="avatar"> 选择头像 </label>
                        <div class="controls">
                            <img src='/1.jpeg' width="70" height="70"/>
                            <img src='/2.jpeg' width="70" height="70"/>
                            <img src='/3.jpeg' width="70" height="70"/>
                            <img src='/4.jpeg' width="70" height="70"/>
                            <img src='/5.jpeg' width="70" height="70"/>
                            <img src='/6.jpeg' width="70" height="70"/>
                            <img src='/7.jpeg' width="70" height="70"/>
                            <img src='/8.jpeg' width="70" height="70"/>
                        </div>

                    </div>

                    <div class="control-group">
                        <label class="control-label" for="name">用户名</label>

                        <div class="controls">
                            <input class="input-xlarge readonly" id="name" name="name" size="30" type="text"  value="${user.username}">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="email">电子邮件</label>

                        <div class="controls">
                            <input class="input-xlarge readonly" id="email" name="email" size="30" type="text"  value="${user.email}">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="signature">个性签名</label>

                        <div class="controls">
                            <textarea class="input-xlarge" id="signature" name="signature" size="30"> ${user.signature}</textarea>
                        </div>
                    </div>


                    <div class="form-actions">
                        <input type="submit" class="span-primary submit_btn" data-loading-text="保存中.." value="保存设置">
                    </div>
                </form>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">更改密码</span>
            </div>
            <div class="inner">
                <form id="change_pass_form" class="form-horizontal" action="/setting/password" method="post">
                    <div class="control-group">
                        <label class="control-label" for="old_pass">当前密码</label>

                        <div class="controls">
                            <input class="input-xlarge" type="password" id="old_pass" name="old_pass" size="30">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="new_pass">新密码</label>

                        <div class="controls">
                            <input class="input-xlarge" type="password" id="new_pass" name="new_pass" size="30">
                        </div>
                    </div>
                    <input type="hidden" id="action" name="action" value="change_password">
                    <input type="hidden" name="_csrf" value="eDpMRS4m-yC3PIzCI1bniN4vrIK8BZlgbX-w">

                    <div class="form-actions">
                        <input type="submit" class="span-primary submit_btn" data-loading-text="更改中.." value="更改密码">
                    </div>
                </form>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">Access Token</span>
            </div>
            <div class="inner">
                <div>
                    <input type="button" class="span-primary refreshToken" value="刷新Token">
                </div>
                <div>
                    <span>字符串：</span>
                    <span id="accessToken">710cb34f-fc9b-43a3-ae7e-a3ca8e3b792a</span>
                </div>
                <div>
                    <span>二维码：</span>
                    <span id="access-token-qrcode" title="710cb34f-fc9b-43a3-ae7e-a3ca8e3b792a">
                        <canvas width="200" height="200" style="display: none;"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(function() {
            // qrcode generate
            var accessToken = "710cb34f-fc9b-43a3-ae7e-a3ca8e3b792a";
            var qrcode = new QRCode(document.getElementById("access-token-qrcode"), {
                text: accessToken,
                width: 200,
                height: 200,
            });
            // END qrcode generate

            // refreshToken
            $(".refreshToken").on("click", function() {
                $.post("/user/refresh_token", function(result) {
                    if (result.status === 'success') {
                        $("#accessToken").text(result.accessToken);
                        qrcode.makeCode(result.accessToken)
                    } else {
                        alert(result.message);
                    }
                })
            })
        });
    </script>

</div>
<div id="backtotop" style="display: none; top: 474px; right: 0px;">回到顶部</div>




<script>
    // google analytics
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script', "https://www.google-analytics.com/analytics.js",'ga');

    ga('create', 'UA-41753901-5', 'auto');
    ga('send', 'pageview');
</script>



<div style="display:none;">
    <script src="//s95.cnzz.com/z_stat.php?id=1254020586&amp;web_id=1254020586" language="JavaScript"></script><script src="https://c.cnzz.com/core.php?web_id=1254020586&amp;t=z" charset="utf-8" type="text/javascript"></script><a href="https://www.cnzz.com/stat/website.php?web_id=1254020586" target="_blank" title="站长统计">站长统计</a>
</div>




</body>
</html>