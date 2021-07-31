<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>forum</title>
    <!-- meta -->
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
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script src="//static2.cnodejs.org/public/index.min.f7c13f64.min.js"></script>

    <title>CNode：Node.js专业中文社区</title>

    <meta content="_csrf" name="csrf-param">
    <meta content="XD3ksbY7-VRuId8bNEEptnIcgf42LjBXd0Sc" name="csrf-token">
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
                <li><a href="/">首页</a></li>

                <li>
                    <a href="/topic/homepage">

                        消息
                    </a>
                </li>

<#--                <li><a href="/getstart">新手入门</a></li>-->
<#--                <li><a href="/api">API</a></li>-->

                <li><a href="/todo" target="">Todo</a></li>


                <li><a href="/Setting">设置</a></li>
                <li>
                    <a href="/login">切换登录</a>
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

                        <a href="/topic "> <img src='/${name.avatar}' height="70" width="70"> ${name.username} </a>

                        <div class="board clearfix">
                            <div class="floor">
                                <span class="big">积分: 5 </span>
                            </div>
                        </div>
                        <div class="space clearfix"></div>
                        <span class="signature">
        “

            ${name.signature}

        ”
    </span>
                    </div>
                </div>



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
                </ul>
            </div>
            <div class="inner userinfo">
                <div class="user_big_avatar">
                    <img src="/${name.avatar}" class="user_avatar" title="Heimaojinz">
                </div>
                <a class="dark">${name.username}</a>

                <div class="user_profile">
                    <ul class="unstyled">
                        <span class="big"></span> 积分


                        <li>
                            <i class="fa fa-lg fa-fw fa-github"></i>
                            <a class="dark" href="https://github.com/Heimaojinz" target="_blank">${name.username} </a>
                        </li>
                    </ul>
                </div>
                <p class="col_fade">
                    <#assign datetime = name.createdTime*1000>
                    <#assign ct =(.now?long-datetime)/1000>
                    <#if ct gte 31104000><#--n年前-->${(ct/31104000)?int}年前
                        <#t><#elseif ct gte 2592000><#--n月前-->${(ct/2592000)?int}个月前
                        <#t><#elseif ct gte 86400*2><#--n天前-->${(ct/86400)?int}天前
                        <#t><#elseif ct gte 86400><#--1天前-->昨天
                        <#t><#elseif ct gte 3600><#--n小时前-->${(ct/3600)?int}小时前
                        <#t><#elseif ct gte 60><#--n分钟前-->${(ct/60)?int}分钟前
                        <#t><#elseif ct gt 0><#--n秒前-->${ct?int}秒前
                        <#t><#else>刚刚
                    </#if>
                    注册
                </p>
            </div>
        </div>


        <div class="panel">
            <div class="header">
                <span class="col_fade">最近创建的话题</span>
            </div>

            <#list topics as t>

            <div class="cell">

                <a class="user_avatar pull-left" href="/user/Heimaojinz">
                    <img src="/${name.avatar}" title="Heimaojinz">
                </a>

                <span class="reply_count pull-left">
    <span class="count_of_replies" title="回复数">
     ${t.toiccomment_Visit}
    </span>
    <span class="count_seperator">/</span>
    <span class="count_of_visits" title="点击数">
       ${t.visit}
    </span>
  </span>


                <span class="last_time pull-right">
      <span class="last_active_time">
              <#assign datetime = t.updatedTime*1000>
              <#assign ct =(.now?long-datetime)/1000>
              <#if ct gte 31104000><#--n年前-->${(ct/31104000)?int}年前
                  <#t><#elseif ct gte 2592000><#--n月前-->${(ct/2592000)?int}个月前
                  <#t><#elseif ct gte 86400*2><#--n天前-->${(ct/86400)?int}天前
                  <#t><#elseif ct gte 86400><#--1天前-->昨天
                  <#t><#elseif ct gte 3600><#--n小时前-->${(ct/3600)?int}小时前
                  <#t><#elseif ct gte 60><#--n分钟前-->${(ct/60)?int}分钟前
                  <#t><#elseif ct gt 0><#--n秒前-->${ct?int}秒前
                  <#t><#else>刚刚
              </#if>
      </span>
    </span>


                <div class="topic_title_wrapper">

                    <a class="topic_title" href="/topic/detail/${t.id}"  >
                        ${t.title}
                    </a>
                </div>

            </div>

            </#list>

            <div class="cell more">
                <a class="dark" href="/topic">查看更多»</a>
            </div>
        </div>

            <div class="panel">
                <div class="header">
                    <span class="col_fade">最近参与的话题</span>
                </div>

                <#list topicComment as a>

                <div class="cell">

                    <a class="user_avatar pull-left" href="/topic/detail/${a.id}">
                        <img src="/${a.user.avatar}" title="Heimaojinz">
                    </a>

                    <span class="reply_count pull-left">
    <span class="count_of_replies" title="回复数">
      ${a.toiccomment_Visit}
    </span>
    <span class="count_seperator">/</span>
    <span class="count_of_visits" title="点击数">
      ${a.visit}
    </span>
  </span>



                    <span class="last_time pull-right">
        <span class="last_active_time">
              <#assign datetime =a.commentList[0].updatedTime*1000>
<#--            <#assign datetime =a.updatedTime*1000>-->

            <#assign ct =(.now?long-datetime)/1000>
            <#if ct gte 31104000><#--n年前-->${(ct/31104000)?int}年前
                <#t><#elseif ct gte 2592000><#--n月前-->${(ct/2592000)?int}个月前
                <#t><#elseif ct gte 86400*2><#--n天前-->${(ct/86400)?int}天前
                <#t><#elseif ct gte 86400><#--1天前-->昨天
                <#t><#elseif ct gte 3600><#--n小时前-->${(ct/3600)?int}小时前
                <#t><#elseif ct gte 60><#--n分钟前-->${(ct/60)?int}分钟前
                <#t><#elseif ct gt 0><#--n秒前-->${ct?int}秒前
                <#t><#else>刚刚
            </#if>
        </span>
    </span>


                    <div class="topic_title_wrapper">

                        <a class="topic_title" href="/topic/detail/${a.id}"  >
                            ${a.title}
                        </a>
                    </div>

                </div>
                </#list>

                <div class="cell more">
                    <a class="dark" href="/topic">查看更多»</a>
                </div>
            </div>
    </div>


    <script>
        $(document).ready(function () {
            $('#set_star_btn').click(function () {
                var $me = $(this);
                var action = $me.attr('action');
                var params = {
                    user_id: '609cecd44d20cb9b9f69304c',
                    _csrf: 'GXmfudVg-nWAF2qiCjzLo5gQ4DQXiv5UX9Hk'
                };
                $.post('/user/' + action, params, function (data) {
                    if (data.status === 'success') {
                        if (action === 'set_star') {
                            $me.html('取消达人');
                            $me.attr('action', 'cancel_star');
                        } else {
                            $me.html('设为达人');
                            $me.attr('action', 'set_star');
                        }
                    }
                }, 'json');
            });

            $('#set_block_btn').click(function () {
                var $me = $(this);
                var action = $me.attr('action');
                var params = {
                    _csrf: 'GXmfudVg-nWAF2qiCjzLo5gQ4DQXiv5UX9Hk',
                    action: action
                };
                if (action === 'set_block' && !confirm('确定要屏蔽该用户吗？')) {
                    return;
                }
                $.post('/user/Heimaojinz/block', params, function (data) {
                    if (data.status === 'success') {
                        if (action === 'set_block') {
                            $me.html('取消屏蔽用户');
                            $me.attr('action', 'cancel_block');
                        } else if (action === 'cancel_block') {
                            $me.html('屏蔽用户');
                            $me.attr('action', 'set_block');
                        }
                    }
                }, 'json');
            })

            $('#delete_all').click(function () {
                var $me = $(this);
                var params = {
                    _csrf: 'GXmfudVg-nWAF2qiCjzLo5gQ4DQXiv5UX9Hk',
                };
                if (!confirm('确定要删除吗？（不会永久删除，只做标记位）')) {
                    return;
                }
                $.post('/user/Heimaojinz/delete_all', params, function (data) {
                    if (data.status === 'success') {
                        alert('操作成功');
                    }
                }, 'json');
            })
        });
    </script>


</div>
<#--<form action="/topic/add" method="POST">-->
<#--    <input type="text" name="title" placeholder="请输入 title">-->
<#--    <br>-->
<#--    <input type="text" name="content" placeholder="请输入 content">-->
<#--    <br>-->
<#--    <button type="submit">添加</button>-->
<#--</form>-->

<#--<div>-->

<#--    <#list topics as t>-->
<#--&lt;#&ndash;        <h3>${t.id} : ${t.title}</h3>&ndash;&gt;-->
<#--        <h4>板块id: ${t.boardId}</h4>-->
<#--        <a href="/topic/detail/${t.id}">${t.id} : ${t.title}</a>-->
<#--        <a href="/topic/edit?id=${t.id}">编辑</a>-->
<#--        <a href="/topic/delete?id=${t.id}">删除</a>-->

<#--        <br>-->
<#--    </#list>-->
<#--</div>-->
</body>
</html>