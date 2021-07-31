<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>帖子 ${topic.title}</title>
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

                <li><a href="/todo"> Todo </a></li>

                <li><a href="/Setting">设置</a></li>
                <li>
                    <a href="/login"> 切换登录 </a>
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
                <span class="col_fade">作者</span>
            </div>
            <div class="inner">
                <div class="user_card">
                    <div>
                        <a class="user_avatar" href="/topic_user?id=${topic.user.id}">
                            <img src="/${topic.user.avatar}" title="Heimaojinz">
                        </a>
                        <span class="user_name"><a class="dark" href="/topic">${topic.user.username}</a></span>

                        <div class="board clearfix">
                            <div class="floor">
                                <span class="big">积分: 10 </span>
                            </div>
                        </div>
                        <div class="space clearfix"></div>
                        <span class="signature">
        “

            ${topic.user.signature}

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
                                _csrf: 'd057Hu3a-XiAvT04Kt_o0HxAQp0snk3e7ubw'
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

                <a  href="/topic_index/add"  id="create_topic_btn">
                    <span class="span-success">发布帖子</span>
                </a>
                &emsp;
                <a href="/message?id=${topic.user.id}" id="create_topic_btn">
                    <span class="span-success">私信作者</span>
                </a>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">作者其它话题</span>
            </div>
            <div class="inner">

                <p>${topic.title}</p>

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
            <div class="header topic_header">
      <span class="topic_full_title">

        ${topic.title}

      </span>
                <div class="changes">
        <span>发布于
            <#assign datetime =topic.updatedTime*1000>
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
        <span>
         用户  <a href="/topic_user?id=${topic.userId}">${topic.user.username}</a>
        </span>
                    <span>
                      13 次浏览
                    </span>

                    <span> 来自 ${board.sign}</span>

<#--                    <a type="submit" value="收藏" action="collect">-->
                </div>

                <br>
                <div id="manage_topic">

                    <a href="/topic/edit?id=${topic.id}">
                        <i class="fa fa-lg fa-pencil-square-o" title="编辑"></i>
                    </a>

                    <a href="/topic/delete?id=${topic.id}" data-id="609dca8b4d20cb17b2693180" class="">
                        <i class="fa fa-lg fa-trash" title="删除"></i></a>

                </div>



            </div>
            <div class="inner topic">

                <div class="topic_content">
                    <div class="markdown-text"><p>${topic.content}</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">${size} 条评论</span>
            </div>


            <#list comments as a>

            <div class="cell reply_area reply_item
  " reply_id="609f87f64d20cb494b693836" reply_to_id="" id="609f87f64d20cb494b693836">
                <div class="author_content">
                    <a href="/topic_user?id=${a.user.id}" class="user_avatar">
                        <img src="/${a.user.avatar}" title="Heimaojinz"></a>

                    <div class="user_info">
                        <a class="dark reply_author" href="/topic">${a.user.username}</a>
                        <a class="reply_time" href="#609f87f64d20cb494b693836">  •
                            <#assign datetime =a.updatedTime*1000>
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
                            评论
                        </a>

<#--                        <span class="reply_by_author">   </span>-->

                    </div>

                    <div class="user_action">
      <span>
        <i class="fa up_btn  fa-thumbs-o-up invisible" title="喜欢"></i>
        <span class="up-count">

        </span>
      </span>

                        <a href="/topicController/edit?id=${a.id}" class="edit_reply_btn">
                            <i class="fa fa-pencil-square-o" title="编辑"></i>
                        </a>

                        <a href="/topicController/delete?id=${a.id}" class="">
                            <i class="fa fa-trash" title="删除"></i>
                        </a>

<#--                        <span>-->

<#--&lt;#&ndash;          <i class="fa fa-reply reply2_btn" title="回复"></i>&ndash;&gt;-->

<#--      </span>-->
                    </div>

                </div>

                <div class="reply_content from-Heimaojinz">
                    <div class="markdown-text"><ol>
                            ${a.content}
                        </ol>
                    </div>
                </div>
                <div class="clearfix">
                    <div class="reply2_area">

                        <form class="reply2_form" action="/609dca8b4d20cb17b2693180/reply" method="post">
                            <input type="hidden" name="_csrf" value="Qk7Skl3T-zdLnU6s2nFolmzHIv-wVD1-6o6U">
                            <input type="hidden" name="reply_id" value="609f87f64d20cb494b693836">

                            <div class="markdown_editor in_editor">
                                <div class="markdown_in_editor">
                                    <textarea class="span8 editor reply_editor" id="reply2_editor_609f87f64d20cb494b693836" name="r_content" rows="4" style="display: none;"></textarea>
                                    <div class="editor-toolbar"><a class="eicon-bold"></a><a class="eicon-italic"></a><i class="separator">|</i>
                                        <a class="eicon-quote"></a><a class="eicon-unordered-list"></a><a class="eicon-ordered-list"></a><i class="separator">|</i>
                                        <a class="eicon-link"></a><a class="eicon-image"></a><i class="separator">|</i>
                                        <a class="eicon-info" href="http://lab.lepture.com/editor/markdown" target="_blank"></a>
                                        <a class="eicon-preview"></a><a class="eicon-fullscreen"></a></div>
                                    <div class="CodeMirror cm-s-paper">
                                        <div style="overflow: hidden; position: relative; width: 3px; height: 0px;">
                                            <textarea autocorrect="off" autocapitalize="off" spellcheck="false" tabindex="0" style="position: absolute; padding: 0px; width: 1000px; height: 1em; outline: none; font-size: 4px;"></textarea></div>
                                        <div class="CodeMirror-hscrollbar"><div style="height: 1px;"></div></div><div class="CodeMirror-vscrollbar">
                                            <div style="width: 1px;"></div></div><div class="CodeMirror-scrollbar-filler"></div>
                                        <div class="CodeMirror-gutter-filler"></div><div class="CodeMirror-scroll" tabindex="-1">
                                            <div class="CodeMirror-sizer" style="min-width: 33px;"><div style="position: relative;"><div class="CodeMirror-lines">
                                                        <div style="position: relative; outline: none;"><div class="CodeMirror-measure"><pre>&nbsp;
                                                                    <span style="display: inline-block; width: 1px; margin-right: -1px;">&nbsp;</span></pre></div>
                                                            <div style="position: relative; z-index: 1;"></div><div class="CodeMirror-code"></div>
                                                            <div class="CodeMirror-cursor">&nbsp;</div>
                                                            <div class="CodeMirror-cursor CodeMirror-secondarycursor">&nbsp;</div>
                                                        </div></div></div></div>
                                            <div style="position: absolute; height: 30px; width: 1px;"></div>
                                            <div class="CodeMirror-gutters" style="display: none;"></div></div></div>

                                    <div class="editor_buttons">
                                        <input class="span-primary reply2_submit_btn submit_btn" type="submit" data-id="609f87f64d20cb494b693836" data-loading-text="回复中.." value="回复">
                                    </div>
                                </div>

                            </div>

                        </form>

                    </div>
                </div>
            </div>
            </#list>
        </div>




        <div class="panel">
            <div class="header">
                <span class="col_fade">添加回复</span>
            </div>
            <div class="inner reply">
                <form id="reply_form" action="/topicController/add" method="post">

                    <div class="markdown_editor in_editor">
                        <div class="markdown_in_editor">
                            <input type="hidden" name="id" placeholder="id" value="${topic.id}" >

                            <textarea class="editor" name="content" rows="8" style="display: none;"></textarea>

                            <div class="editor_buttons">
                                <input class="span-primary submit_btn" type="submit" data-loading-text="回复中.." value="回复">
                            </div>
                        </div>

                    </div>

                    <input type="hidden" name="_csrf" id="_csrf" value="d057Hu3a-XiAvT04Kt_o0HxAQp0snk3e7ubw">
                </form>
            </div>
        </div>


    </div>

    <div class="replies_history" style="display: none;">
        <div class="inner_content"></div>
        <div class="anchor"></div>
    </div>

    <!-- 预览模态对话框 -->
    <div class="modal fade" id="preview-modal">
        <div class="modal-body" style="max-height: initial;">
            <img src="" alt="点击内容或者外部自动关闭图片预览" id="preview-image">
        </div>
    </div>



    <!-- markdown editor -->
    <script src="//static2.cnodejs.org/public/editor.min.1a456564.min.js"></script>


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


    <script type="text/javascript">
        (function(){
            var timer = null; //对话框延时定时器
            // 初始化 $('.replies_history')
            var $repliesHistory = $('.replies_history');
            var $repliesHistoryContent = $repliesHistory.find('.inner_content');
            $repliesHistory.hide();
            // END
            // 鼠标移入对话框清除隐藏定时器；移出时隐藏对话框
            $repliesHistory.on('mouseenter', function(){
                clearTimeout(timer);
            }).on('mouseleave', function(){
                $repliesHistory.fadeOut('fast');
            });
            // 显示被 at 用户的本页评论
            if ($('.reply2_item').length === 0) {
                // 只在流式评论布局中使用

                $('#content').on('mouseenter', '.reply_content a', function (e) {
                    clearTimeout(timer);
                    var $this = $(this);
                    if ($this.text()[0] === '@') {
                        var thisText = $this.text().trim();
                        var loginname = thisText.slice(1);
                        var offset = $this.offset();
                        var width = $this.width();
                        var mainOffset = $('#main').offset();
                        $repliesHistory.css('left', offset.left-mainOffset.left+width+10); // magic number
                        $repliesHistory.css('top', offset.top-mainOffset.top-10); // magic number
                        $repliesHistory.css({
                            'z-index': 1,
                        });
                        $repliesHistoryContent.empty();
                        var chats = [];
                        var replyToId = $this.closest('.reply_item').attr('reply_to_id');
                        while (replyToId) {
                            var $replyItem = $('.reply_item[reply_id=' + replyToId + ']');
                            var replyContent = $replyItem.find('.reply_content').text().trim();
                            if (replyContent.length > 0) {
                                chats.push([
                                    $($replyItem.find('.user_avatar').html()).attr({
                                        height: '30px',
                                        width: '30px',
                                    }), // avatar
                                    (replyContent.length>300?replyContent.substr(0,300)+'...':replyContent), // reply content
                                    '<a href="#'+replyToId+'" class="scroll_to_original" title="查看原文">↑</a>'
                                ]);
                            }
                            replyToId = $replyItem.attr('reply_to_id');
                        }
                        if(chats.length > 0) {
                            chats.reverse();

                            $repliesHistoryContent.append('<div class="title">查看对话</div>');
                            chats.forEach(function (pair, idx) {
                                var $chat = $repliesHistoryContent.append('<div class="item"></div>');
                                $chat.append(pair[0]); // 头像
                                $chat.append($('<span>').text(pair[1])); // 内容
                                $chat.append(pair[2]); // 查看原文 anchor
                            });
                            $repliesHistory.fadeIn('fast');
                        }else{
                            $repliesHistory.hide();
                        }
                    }
                }).on('mouseleave', '.reply_content a', function (e) {
                    timer = setTimeout(function(){
                        $repliesHistory.fadeOut('fast');
                    }, 500);
                });
            }
            // END 显示被 at 用户的本页评论
        })();

        // 点赞
        $('.up_btn').click(function (e) {
            var $this = $(this);
            var replyId = $this.closest('.reply_area').attr('reply_id');
            $.ajax({
                url: '/reply/' + replyId + '/up',
                method: 'POST',
            }).done(function (data) {
                if (data.success) {
                    $this.removeClass('invisible');
                    var currentCount = Number($this.next('.up-count').text().trim()) || 0;
                    if (data.action === 'up') {
                        $this.next('.up-count').text(currentCount + 1);
                        $this.addClass('uped');
                    } else {
                        if (data.action === 'down') {
                            $this.next('.up-count').text(currentCount - 1);
                            $this.removeClass('uped');
                        }
                    }
                } else {
                    alert(data.message);
                }
            }).fail(function (xhr) {
                if (xhr.status === 403) {
                    alert('请先登录，登陆后即可点赞。');
                }
            });
        });
        // END 点赞
        // 图片预览
        (function(){
            var $previewModal = $('#preview-modal');
            var $previewImage = $('#preview-image');
            var $body = $('body'); // cache

            $(document).on('click', '.markdown-text img', function(e) {
                var $img = $(this);
                // 图片被a标签包裹时，不显示弹层
                if ($img.parent('a').length > 0) {
                    return;
                }
                showModal($img.attr('src'));
            });

            $previewModal.on('click', hideModal);

            $previewModal.on('hidden.bs.modal', function() {
                // 在预览框消失之后恢复 body 的滚动能力
                $body.css('overflow-y', 'scroll');
            })

            $previewModal.on('shown.bs.modal', function() {
                // 修复上次滚动留下的痕迹,可能会导致短暂的闪烁，不过可以接受
                // TODO: to be promote
                $previewModal.scrollTop(0);
            })

            function showModal(src) {
                $previewImage.attr('src', src);
                $previewModal.modal('show');
                // 禁止 body 滚动
                $body.css('overflow-y', 'hidden');
            }

            function hideModal() {
                $previewModal.modal('hide');
            }

        })()
        // END 图片预览
    </script>

</div><div class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editorToolImageTitle" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="editorToolImageTitle">图片</h3></div><div class="modal-body"><div class="upload-img" style="height: 50px; padding: 60px 0px; text-align: center; border: 4px dashed rgb(221, 221, 221);"><div class="button webuploader-container" style="width: 86px; height: 40px; margin: 0px auto;"><div class="webuploader-pick">上传图片</div><div id="rt_rt_1f5ncpf511lkb7fefmq1leh83d1" style="position: absolute; overflow: hidden; inset: 0px auto auto 0px; width: 86px; height: 40px;"><input type="file" name="file" class="webuploader-element-invisible" accept="image/*"><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div><span class="tip" style="display: none;"></span><div class="alert alert-error hide"></div></div></div></div><div class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editorToolImageTitle" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="editorToolImageTitle">添加链接</h3></div><div class="modal-body"><form class="form-horizontal"><div class="control-group"><label class="control-label">标题</label><div class="controls"><input type="text" name="title" placeholder="Title"></div></div><div class="control-group"><label class="control-label">链接</label><div class="controls"><input type="text" name="link" value="http://" placeholder="Link"></div></div></form></div><div class="modal-footer"><button class="btn btn-primary" role="save">确定</button></div></div>
<div id="backtotop" style="top: 474px; right: 0px;">回到顶部</div>
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
    <script src="//s95.cnzz.com/z_stat.php?id=1254020586&amp;web_id=1254020586" language="JavaScript"></script>
    <script src="https://c.cnzz.com/core.php?web_id=1254020586&amp;t=z" charset="utf-8" type="text/javascript"></script><a href="https://www.cnzz.com/stat/website.php?web_id=1254020586" target="_blank" title="站长统计">站长统计</a>
</div>




<div id="atwho-container"><div id="atwho-ground-a04443741621061582005">
        <div class="atwho-view" id="at-view-64"><ul class="atwho-view-ul"></ul></div></div></div></body>
</html>
