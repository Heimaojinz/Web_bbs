<html>
<head>
    <!-- meta charset 指定了页面编码, 否则中文会乱码 -->
    <meta charset="utf-8">
    <!-- title 是浏览器显示的页面标题 -->
    <title>修改 密码</title>
    <link rel="stylesheet" href="/user.css">

</head>
<body>

<div class="login-wrap">
    <div class="login-html">
        <input id="tab-2" type="radio" name="tab" class="sign-in" checked>
        <label for="tab-2" class="tab">请输入新密码</label>

        <input id="tab-2" type="radio" name="tab" class="sign-up">
        <label for="tab-1" class="tab"></label>

        <div class="login-form">

            <div class="sign-in-htm">
                <form action="/reset/send" method="post">

                    <br>

                    <div class="group">
                        <label for="user" class="label">新密码</label>
                        <input id="password" type="text" name="mima" class="input" required>
                    </div>

                    <div class="group">
                        <label for="pass" class="label"></label>
                        <input name="token" placeholder="token" value="${token}"  type="hidden" class="input" >
                    </div>

                    <br>
                    <div class="group">
                        <input type="submit" class="button" value="提交新密码">
                    </div>

                    <div class="hr"></div>

                    <br>

                    <div class="foot-lnk">
                        <label for="">
                            本链接只有一次有效提交次数
                                    <br>
                                  请谨慎修改
                        </label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
