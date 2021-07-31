<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>forum</title>
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
                <li> <a href="/topic/homepage"> 消息 </a> </li>

                <li> <a href="/"> 首页 </a> </li>

                <li><a href="/todo">Todo</a></li>

                <li><a href="/Setting">设置</a></li>

                <li>
                    <a href="/login" >切换登录</a>
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
                        <a href="/topic"> <img src="/${name.avatar}" width="70" height="70"> ${name.username} </a>

                        <div class="board clearfix">
                            <div class="floor">
<#--                                <span class="big">积分: 5 </span>-->
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


                <script>
                    $(document).ready(function () {
                        $('.follow_btn').click(function () {
                            var $me = $(this);
                            var action = $me.attr('action');
                            var params = {
                                follow_id: '609cecd44d20cb9b9f69304c',
                                _csrf: 'QjKEnGHA-wOwz6KF2dRv5I6rhW7LmMMcEpqI'
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

                <a href="/" class="topic-tab ">全部</a>

                <a href="/topic/follower?tab=share" class="topic-tab ">分享</a>

                <a href="/topic/follower?tab=ask" class="topic-tab ">问答</a>

                <a href="/topic/follower?tab=job" class="topic-tab ">招聘</a>

                <a href="/topic/follower?tab=topic" class="topic-tab ">客户端测试</a>

            </div>

            <div class="inner no-padding">

                <div id="topic_list">

                    <#list topics as t>

                    <div class="cell">

                            <a class="user_avatar pull-left" href="/topic/detail/${t.id}">
                                <img src="/${t.user.avatar}" title="XadillaX">
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

                            <a class="last_time pull-right" href="/topic/detail/${t.id}">
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
                            </a>

                            <div class="topic_title_wrapper">

                                <span class="topiclist-tab"> ${t.board.sign} </span>

                                <a class="topic_title" href="/topic/detail/${t.id}" > 帖子 ${t.title}   </a>

                            </div>
                    </div>
                   </#list>

                    <div class="pagination" current_page="1">
                        <ul>
                            <li class="disabled"><a>«</a></li>

<#--                            <li class="disabled active"><a>1</a></li>-->

<#--                            <li><a href="/?tab=all&amp;page=2">2</a></li>-->

<#--                            <li><a href="/?tab=all&amp;page=3">3</a></li>-->

<#--                            <li><a href="/?tab=all&amp;page=4">4</a></li>-->

<#--                            <li><a href="/?tab=all&amp;page=5">5</a></li>-->

                            <li><a>...</a></li>

                            <li><a href="/?tab=all&amp;page=17">»</a></li>
                        </ul>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var $nav = $('.pagination');
                            var current_page = $nav.attr('current_page');
                            if (current_page) {
                                $nav.find('li').each(function () {
                                    var $li = $(this);
                                    var $a = $li.find('a');
                                    if ($a.html() == current_page) {
                                        $li.addClass('active');
                                        $a.removeAttr('href');
                                    }
                                });
                            }
                        });
                    </script>

                </div>
            </div>
        </div>
    </div>


    <div id="sidebar-mask"></div>


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

</div>
</body>
</html>