<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="/Css.css">
</head>

<body>
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
                <li><a href="/"> 首页 </a></li>
<#--                <li><a href="/topic/homepage">论坛</a></li>-->
<#--                <li><a href="/api">API</a></li>-->
                <li><a href="/todo" >Todo</a></li>
                <li><a href="/login">登录/注册</a></li>
            </ul>

<#--            <a class="btn btn-navbar" id="responsive-sidebar-trigger">-->
<#--                <span class="icon-bar"></span>-->
<#--                <span class="icon-bar"></span>-->
<#--                <span class="icon-bar"></span>-->
<#--            </a>-->

        </div>
    </div>
</div>

<div id="main">
    <div id="sidebar">
        <div class="panel">
            <div class="inner">
                <p> 个人信息 </p>

                <div>
                   <a href="/topic"> <img src="/${username.avatar}" width="70" height="70"> ${username.username} </a>

                    <br>
                    <br>
                    <span class="signature">

                    </span>
                </div>
                <br>
                <a href="/login">
          <span class="span-info">
            点击 登录
          </span>
                </a>

                <script>
                    $(document).ready(function () {
                        $('.follow_btn').click(function () {
                            var $me = $(this);
                            var action = $me.attr('action');
                            var params = {
                                follow_id: '609cecd44d20cb9b9f69304c',
                                _csrf: 'RRoPosi3-apRXzO-93rXn2f4UykNaknFahXc'
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
                   <br>
            </div>
        </div>
    </div>


    <div id="content">
        <div class="panel">
            <div class="header">
                <ul class="breadcrumb">
                    <li><a href="/">论坛</a><span class="divider">/</span></li>
                    <li class="active">通知</li>
                </ul>
            </div>
            <div class="inner">

                <div class="alert alert-error">
                    <strong> ~请先登陆哦~ </strong>
                </div>

                <a href="/"><span class="span-common">  前往论坛 </span></a>

            </div>
        </div>
    </div>
</div>
</body>
</html>