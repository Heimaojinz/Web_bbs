<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>留言/私信</title>
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
<#--    <script async="" src="https://www.google-analytics.com/analytics.js"></script>-->
    <script src="//static2.cnodejs.org/public/index.min.f7c13f64.min.js"></script>

    <title>CNode：Node.js专业中文社区</title>

    <meta content="_csrf" name="csrf-param">
    <meta content="XD3ksbY7-VRuId8bNEEptnIcgf42LjBXd0Sc" name="csrf-token">
<#--    <link rel="stylesheet" href="/Css.css">-->
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
                <#--                <li><a href="/">未读信息</a></li>-->
                <li><a href="/todo" >Todo</a></li>
                <li><a href="">设置</a></li>
                <li><a href="/login">切换用户</a></li>
<#--                <li>-->
<#--                    <a href="/loginOut" data-method="post" rel="nofollow">退出</a>-->
<#--                </li>-->
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
                        <a href="/topic"> <img src="/${username.avatar}" width="70" height="70"> ${username.username} </a>

                        <div class="space clearfix"></div>
                        <span class="signature">
                            “

                                这家伙很懒，什么个性签名都没有留下。

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
                                _csrf: 'N8VONCnx-VMsgdfN2hRweZFPN6zgMHbkBx4I'
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
                    <li class="active">新消息</li>
                </ul>
            </div>
        <div class="panel">

 <#--                私信-->
            <#list message as a>

                                <div class="cell reply_area reply_item
              " reply_id="609f87f64d20cb494b693836" reply_to_id="" id="609f87f64d20cb494b693836">
                                    <div class="author_content">
                                        <a href="/topic_user?id=${a.id}" class="user_avatar">
                                            <img src="/${a.avatar}" title=""></a>

                                        <div class="user_info">
                                            <a class="dark reply_author" href="/topic_user?id=${a.id}">${a.username}</a>
                                            <a class="reply_time" href="#609f87f64d20cb494b693836">  •
                                                <#assign datetime =a.commentList[0].updatedTime*1000>
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


                                        </div>
                                        <span class="reply_by_author"> ${a.commentList[0].classify}</span>
                                        &emsp;&emsp; <a style="display: inline-block;" href="/message/index?id=${a.id}" class="markdown-text">
                                            ${a.commentList[0].content} </a>

                                        <div class="user_action">

                                            <a href="/message/delete?id=${a.id}">
                                                <i class="fa fa-trash" title="删除记录"></i>
                                            </a>

                                        </div>
                                    </div>

                                </div>


                        </#list>


<#--                      //      @信息-->
            <#list message2 as a>

                    <div class="cell reply_area reply_item
  " reply_id="609f87f64d20cb494b693836" reply_to_id="" id="609f87f64d20cb494b693836">
                        <div class="author_content">
                            <a href="/topic_user?id=${a.id}" class="user_avatar">
                                <img src="/${a.avatar}" title=""></a>

                            <div class="user_info">
                                <a class="dark reply_author" href="/topic_user?id=${a.id}">${a.username}</a>
                                <a class="reply_time" href="#609f87f64d20cb494b693836">  •
                                    <#assign datetime =a.commentList[0].updatedTime*1000>
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

                            </div>
                            <span class="reply_by_author"> ${a.commentList[0].classify}</span>
                            &emsp;&emsp; <a style="display: inline-block;" href="/topic/detail/${a.commentList[0].topic_Id}" class="markdown-text">
                                ${a.commentList[0].content} </a>
                            <div class="user_action">

                                <a href="/message/delete?id=${a.id}">
                                    <i class="fa fa-trash" title="删除记录"></i>
                                </a>

                            </div>
                        </div>
                    </div>


            </#list>

            <div class="inner">
                <p>暂无消息了</p>
            </div>

        </div>
    </div>
    </div>

</div>
<div id="backtotop" style="top: 364px; right: 0px;">回到顶部</div>
<div id="sidebar-mask"></div>



<script>

    var log = console.log.bind(console);
    $(document).ready(function () {
        // 获取所有回复者name
        var allNames = $('.reply_author').map(function (idx, ele) {
            return $(ele).text().trim();
        }).toArray();
        allNames.push($('.user_card .user_name').text())
        allNames = _.uniq(allNames);
        // END 获取所有回复者name

        // 编辑器相关
        $('textarea.editor').each(function(){
            var editor = new Editor({
                status: []
            });
            var $el = $(this);

            editor.render(this);
            //绑定editor
            $(this).data('editor', editor);

            var $input = $(editor.codemirror.display.input);
            $input.keydown(function(event){
                if (event.keyCode === 13 && (event.ctrlKey || event.metaKey)) {
                    event.preventDefault();
                    $el.closest('form').submit();
                }
            });

            // at.js 配置
            var codeMirrorGoLineUp = CodeMirror.commands.goLineUp;
            var codeMirrorGoLineDown = CodeMirror.commands.goLineDown;
            var codeMirrorNewlineAndIndent = CodeMirror.commands.newlineAndIndent;
            $input.atwho({
                at: '@',
                data: allNames
            })
                .on('shown.atwho', function () {
                    CodeMirror.commands.goLineUp = _.noop;
                    CodeMirror.commands.goLineDown = _.noop;
                    CodeMirror.commands.newlineAndIndent = _.noop;
                })
                .on('hidden.atwho', function () {
                    CodeMirror.commands.goLineUp = codeMirrorGoLineUp;
                    CodeMirror.commands.goLineDown = codeMirrorGoLineDown;
                    CodeMirror.commands.newlineAndIndent = codeMirrorNewlineAndIndent;
                });
            // END at.js 配置

        });
        // END 编辑器相关

        // 评论回复
        $('#content').on('click', '.reply2_btn', function (event) {
            var $btn = $(event.currentTarget);
            var parent = $btn.closest('.reply_area');
            var editorWrap = parent.find('.reply2_form');
            parent.find('.reply2_area').prepend(editorWrap);
            var textarea = editorWrap.find('textarea.editor');
            var user = $btn.closest('.author_content').find('.reply_author').text().trim();
            var editor = textarea.data('editor');
            editorWrap.show('fast', function () {
                var cm = editor.codemirror;
                cm.focus();
                if(cm.getValue().indexOf('@' + user) < 0){
                    editor.push('@' + user + ' ');
                }
            });
        });

        $('#content').on('click', '.reply2_at_btn', function (event) {
            var $btn = $(event.currentTarget);
            var editorWrap = $btn.closest('.reply2_area').find('.reply2_form');
            $btn.closest('.reply2_item').after(editorWrap);
            var textarea = editorWrap.find('textarea.editor');
            var user = $btn.closest('.reply2_item').find('.reply_author').text().trim();
            var editor = textarea.data('editor');
            editorWrap.show('fast', function () {
                var cm = editor.codemirror;
                cm.focus();
                if(cm.getValue().indexOf('@' + user) < 0){
                    editor.push('@' + user + ' ');
                }
            });
            // END 评论回复
        });

        // 加入收藏
        $('.collect_btn').click(function () {
            var $me = $(this);
            var action = $me.attr('action');
            var data = {
                topic_id: '609dca8b4d20cb17b2693180',
                _csrf: 'd057Hu3a-XiAvT04Kt_o0HxAQp0snk3e7ubw'
            };
            var $countSpan = $('.collect-topic-count');
            $.post('/topic/' + action, data, function (data) {
                if (data.status === 'success') {
                    if (action == 'collect') {
                        $me.val('取消收藏');
                        $me.attr('action', 'de_collect');
                    } else {
                        $me.val('收藏');
                        $me.attr('action', 'collect');
                    }
                    $me.toggleClass('span-success');
                }
            }, 'json');
        });
        // END 加入收藏

        // 删除回复
        $('#content').on('click', '.delete_reply_btn, .delete_reply2_btn', function (event) {
            var $me = $(event.currentTarget);
            if (confirm('确定要删除此回复吗？')) {
                var reply_id = null;
                if ($me.hasClass('delete_reply_btn')) {
                    reply_id = $me.closest('.reply_item').attr('reply_id');
                }
                if ($me.hasClass('delete_reply2_btn')) {
                    reply_id = $me.closest('.reply2_item').attr('reply_id');
                }
                var data = {
                    reply_id: reply_id,
                    _csrf: "d057Hu3a-XiAvT04Kt_o0HxAQp0snk3e7ubw"
                };
                $.post('/reply/' + reply_id + '/delete', data, function (data) {
                    if (data.status === 'success') {
                        if ($me.hasClass('delete_reply_btn')) {
                            $me.closest('.reply_item').remove();
                        }
                        if ($me.hasClass('delete_reply2_btn')) {
                            $me.closest('.reply2_item').remove();
                        }
                    }
                }, 'json');
            }
            return false;
        });
        // END 删除回复

        // 删除话题
        $('.delete_topic_btn').click(function () {
            var topicId = $(this).data('id');
            if (topicId && confirm('确定要删除此话题吗？')) {
                $.post('/topic/' + topicId + '/delete', { _csrf: $('#_csrf').val() }, function (result) {
                    if (!result.success) {
                        alert(result.message);
                    } else {
                        location.href = '/';
                    }
                });
            }
            return false;
        });
        // END 删除话题

        // 用户 hover 在回复框时才显示点赞按钮
        $('.reply_area').hover(
            function () {
                $(this).find('.up_btn').removeClass('invisible');
            },
            function () {
                var $this = $(this);
                if ($this.find('.up-count').text().trim() === '') {
                    $this.find('.up_btn').addClass('invisible');
                }
            });
        // END 用户 hover 在回复框时才显示点赞按钮


    });

</script>


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