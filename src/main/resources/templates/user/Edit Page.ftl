<html>
    <head>
        <!-- meta charset 指定了页面编码, 否则中文会乱码 -->
        <meta charset="utf-8">
        <!-- title 是浏览器显示的页面标题 -->
        <title>找回密码</title>
        <link rel="stylesheet" href="/user.css">

    </head>
    <body>
    <!--用户登录-->
    <div class="login-wrap">
        <div class="login-html">

            <input id="tab-2" type="radio" name="tab" class="sign-in" checked>
            <label for="tab-2" class="tab"></label>

            <input id="tab-2" type="radio" name="tab" class="sign-up">
            <label for="tab-1" class="tab">请输入需要找回密码的用户名</label>

            <div class="login-form">

                <div class="sign-in-htm">
                    <form action="/reset/send" method="post">

                        <br>

                        <div class="group">
                            <label for="user" class="label">用户名</label>
                            <input id="user" type="text" name="name" class="input">
                        </div>

                        <br>

                        <div class="group">
                            <input type="submit" class="button" value="提交用户名">
                        </div>

                        <div class="hr"></div>

                        <br>

                        <div class="foot-lnk">
                            <label for="">我们会以邮件形式更改密码</label>
                            <br>
                            <label for="">提交用户名后会发送邮件到该用户绑定的邮箱</label>
                            <br>
                            <label for="">请注意查收</label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
