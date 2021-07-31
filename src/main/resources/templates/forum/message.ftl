<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>私信</title>
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
    <script async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script>
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
                            <a class="user_avatar" href="/">
                            <img src="/${person_user.avatar}" title="Heimaojinz">
                        </a>
                        <span class="user_name"><a class="dark" href="/topic">${person_user.username}</a></span>

                        <div class="board clearfix">
                            <div class="floor">
                                <span class="big"> </span>
                            </div>
                        </div>
                        <div class="space clearfix"></div>
                        <span class="signature">
                            “

                                ${person_user.signature}

                            ”
                        </span>
                    </div>
                </div>
            </div>
        </div>


        <div class="panel">
            <div class="header">
                <span class="col_fade">作者其它话题</span>
            </div>
            <div class="inner">

                <p>新用户测试 测试功能</p>

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

              </span>

                    <div class="changes">
                        &emsp;&emsp;
                        <a class="" href="/">
                             <img width="75" height="75" src="/${receiverUsername.avatar}" title="">
                        </a>


                             &emsp; &emsp;<span>用户<a href="/topic_user?id=${receiverUsername.id}">${receiverUsername.username}</a></span>

                             &emsp;&emsp;<span>注册时间
                            <#assign datetime =receiverUsername.updatedTime*1000>
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

                            &emsp;&emsp;<span>13 次浏览</span>
                        &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;
                        &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;
                        &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;
                         <a href="/message/delete?id=${receiverUsername.id}" data-id="609dca8b4d20cb17b2693180" >
                            <i class="fa fa-lg fa-trash" title="删除所有记录"></i>
                        </a>

                </div>


            </div>

                    <div class="inner topic">
                        <div class="">

                            <div style="font-size: 12px;color: #838383">
                                <#list message as t>

                                <span>
                                    <#assign userid = person_user.id>
                                    <#assign user_id = receiverUsername.id>
                                    <#if t.user.id = (userid)>

                                       <div style="text-align:right">
                                           <span>
                                              <#assign datetime =t.updatedTime*1000>
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
                                    </span> &emsp;&emsp;
                                           <a href="/message/delete2?id=${t.id}">
                                               <i class="fa fa-lg fa-trash" title="删除这条记录"></i>
                                           </a>&emsp;&emsp;&emsp;&emsp;
                                        <img width="55" height="55" src="/${t.user.avatar}" >

                                            <div style="background: #becacd;margin-right: 100px;margin-left: 400px;
                                      border-radius: 12px; padding-right: 20px;padding-left: 20px;font-size: 14px;color: #0e0e0e;" >

                                         ${t.content}

                                    </div>
                                    </div>
                                    <br>

                                <#t><#elseif t.user.id = user_id>

                                     <img width="55" height="55" src="/${t.user.avatar}" title="">
                                          &emsp;&emsp;&emsp;&emsp;
                                           <a href="/message/delete2?id=${t.id}"  >
                                               <i class="fa fa-lg fa-trash" title="删除这条记录"></i>
                                           </a>
                                               &emsp;&emsp;<span>
                                            <#assign datetime =t.updatedTime*1000>
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

                                    <div style="background: #becacd;margin-right: 400px;margin-left: 100px;
                                    border-radius: 12px;padding-left:20px;padding-right: 20px;color: #0e0e0e;
                                    white-space: normal;background-clip: border-box" >
                                        ${t.id} ${t.content}
                                    </div>
                                    <br>
                                    </#if>
                                    </span>
                                </#list>


<#--                                <#list message as t>-->
<#--                                    <div style="text-align:right">-->
<#--                                        <img   width="55" height="55" src="/${receiverUsername.avatar}" >-->
<#--                                    </div>-->
<#--                                    <div style="background: #becacd;margin-right: 100px;margin-left: 300px;-->
<#--                                    border-radius: 12px; padding-right: 20px;padding-left: 20px" >-->
<#--                                        ${t.id} ${t.content}-->
<#--                                    </div>-->
<#--                                    <br>-->
<#--                                </#list>-->
                            </div>






                   </div>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">添加私信</span>
            </div>
            <div class="inner reply">

                <form id="reply_form" action="/message/add?name=${receiverUsername.username}" method="post">

                    <div class="markdown_editor in_editor">
                        <div class="markdown_in_editor">

                            <textarea class="editor" name="content" rows="8" style="display: none;"></textarea>
                            <div class="editor_buttons">
                                <input class="span-primary submit_btn" type="submit" data-loading-text="回复中.." value="回复">
                            </div>
                        </div>

                    </div>

                    <input type="hidden" name="_csrf" id="_csrf" value="XD3ksbY7-VRuId8bNEEptnIcgf42LjBXd0Sc">
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

</div><div class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editorToolImageTitle" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="editorToolImageTitle">图片</h3></div><div class="modal-body"><div class="upload-img" style="height: 50px; padding: 60px 0px; text-align: center; border: 4px dashed rgb(221, 221, 221);"><div class="button webuploader-container" style="width: 86px; height: 40px; margin: 0px auto;"><div class="webuploader-pick">上传图片</div><div id="rt_rt_1f90l71sv1a4kt71c22rjkk7i1" style="position: absolute; overflow: hidden; inset: 0px auto auto 0px; width: 86px; height: 40px;"><input type="file" name="file" class="webuploader-element-invisible" accept="image/*"><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div><span class="tip" style="display: none;"></span><div class="alert alert-error hide"></div></div></div></div><div class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editorToolImageTitle" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="editorToolImageTitle">添加链接</h3></div><div class="modal-body"><form class="form-horizontal"><div class="control-group"><label class="control-label">标题</label><div class="controls"><input type="text" name="title" placeholder="Title"></div></div><div class="control-group"><label class="control-label">链接</label><div class="controls"><input type="text" name="link" value="http://" placeholder="Link"></div></div></form></div><div class="modal-footer"><button class="btn btn-primary" role="save">确定</button></div></div><div class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editorToolImageTitle" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="editorToolImageTitle">图片</h3></div><div class="modal-body"><div class="upload-img" style="height: 50px; padding: 60px 0px; text-align: center; border: 4px dashed rgb(221, 221, 221);"><div class="button webuploader-container" style="width: 86px; height: 40px; margin: 0px auto;"><div class="webuploader-pick">上传图片</div><div id="rt_rt_1f5ncpf511lkb7fefmq1leh83d1" style="position: absolute; overflow: hidden; inset: 0px auto auto 0px; width: 86px; height: 40px;"><input type="file" name="file" class="webuploader-element-invisible" accept="image/*"><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div><span class="tip" style="display: none;"></span><div class="alert alert-error hide"></div></div></div></div><div class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editorToolImageTitle" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="editorToolImageTitle">添加链接</h3></div><div class="modal-body"><form class="form-horizontal"><div class="control-group"><label class="control-label">标题</label><div class="controls"><input type="text" name="title" placeholder="Title"></div></div><div class="control-group"><label class="control-label">链接</label><div class="controls"><input type="text" name="link" value="http://" placeholder="Link"></div></div></form></div><div class="modal-footer"><button class="btn btn-primary" role="save">确定</button></div></div>
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





<div id="atwho-container"><div id="atwho-ground-a04443741621061582005">
        <div class="atwho-view" id="at-view-64"><ul class="atwho-view-ul"></ul></div></div><div id="atwho-ground-31f5ddf81624593631162"><div class="atwho-view" id="at-view-64"><ul class="atwho-view-ul"></ul></div></div><div id="atwho-ground-2f1101ff1624593631170"><div class="atwho-view" id="at-view-64"><ul class="atwho-view-ul"></ul></div></div></div>



</body>
</html>





<#--<body>-->


<#--    <form action="/message/add" method="POST">-->
<#--        <input type="text" name="content" placeholder="私信内容">-->
<#--        <input id="id-input-username" type="text" name="receiverUsername" placeholder="请输入接受者的名字">-->
<#--        <br>-->
<#--        <button type="submit">添加</button>-->
<#--    </form>-->


<#--    <div id="id-div-username">  </div>-->


<#--<div>-->
<#--    // 展示收到的私信-->
<#--    <#list messages as m>-->
<#--        ${m.id}: ${m.content}-->
<#--&lt;#&ndash;        ${m.senderId}, ${m.receiverId}&ndash;&gt;-->
<#--    </#list>-->
<#--</div>-->


<#--<script>-->
<#--    var log = console.log.bind(console);-->

<#--    var ajax = function (method, path, data, callback) {-->
<#--        var r = new XMLHttpRequest();-->
<#--        r.open(method, path, true)-->

<#--        r.setRequestHeader("Content-Type", "application/json")-->

<#--        r.onreadystatechange = function () {-->
<#--            if (r.readyState === 4) {-->
<#--                callback(r.response)-->
<#--            }-->
<#--        }-->

<#--        data = JSON.stringify(data);-->
<#--        r.send(data)-->
<#--    }-->

<#--    var queryUser = function (username) {-->
<#--        var url  = "message/queryUser?receiverUsername=" + username-->
<#--        var method = "GET"-->
<#--        var data = ""-->
<#--        ajax(method, url, data, function (response) {-->
<#--            log("query response: ",response.length)-->
<#--            insert(response)-->
<#--        })-->
<#--    }-->


<#--    var bindEvents = function () {-->
<#--        // 找到输入用户名的 input 输入框-->
<#--        var input = document.querySelector("#id-input-username")-->
<#--        // 监听 input 输入框的 input 事件, 每次输入都能执行回调函数-->
<#--        input.addEventListener("input", function (event) {-->
<#--            var target = event.target-->
<#--            queryUser(target.value)-->
<#--        })-->
<#--    }-->

<#--    var insert = function (useranme) {-->
<#--        var user = document.querySelector("#id-div-username")-->
<#--        user.insertAdjacentHTML("beforeend", useranme)-->
<#--    }-->

<#--    var __main = function () {-->
<#--        bindEvents()-->
<#--    }-->

<#--    __main()-->

<#--</script>-->
<#--</body>-->

