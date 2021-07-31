<html>
    <head>
        <!-- meta charset 指定了页面编码, 否则中文会乱码 -->
        <meta charset="utf-8">
        <!-- title 是浏览器显示的页面标题 -->
        <title>注册</title>
        <link rel="stylesheet" href="/user.css">
        <#--        <script src="/user.js"></script>-->

    </head>
    <body>
    <!--用户登录-->
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-2" type="radio" name="tab" class="sign-in" checked>
            <label for="tab-2" class="tab">登录</label>

            <input id="tab-1" type="radio" name="tab" class="sign-up">
            <label for="tab-1" class="tab">注册</label>






            <div class="login-form">
                <div class="sign-in-htm">
                    <form action="/user/login" method="post">

                        <br>
                        <div class="group">
                            <label for="user" class="label">用户名</label>
                            <input id="username" type="text" name="username" class="input" value="gua">
                        </div>

                        <br>
                        <div class="group">
                            <label for="pass" class="label" >密码</label>
                            <input id="password" type="text"  name="password" class="input" data-type="password" value="12345">
                        </div>

                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label for="check"><span class="icon"></span><label class="check-text">记住我</label></label>
                        </div>

                        <div class="group">
                            <input type="submit" class="button" value="现在登录">
                        </div>

                        <div class="hr"></div>

                        <div class="foot-lnk">
                            <a href="/reset/send-">忘记密码</a>
                        </div>
                    </form>
                </div>

                <div class="sign-up-htm">
                    <form action="/user/add" method="post">
                        <div class="group">
                            <label for="user" class="label">用户名</label>
                            <input id="user" type="text" name="username" class="input" required>
                        </div>

                        <div class="group">
                            <label for="pass" class="label">密码</label>
                            <input id="input1" type="password" name="password" class="input" data-type="password" required>
                        </div>

                        <div class="group">
                            <label for="pass" class="label">重复密码</label>
                            <input id="input2" type="password" class="input" data-type=""  onblur="check2pwd()" required>
                        </div>

                        <div class="group">
                            <label for="pass" class="label">个人邮箱</label>
                            <input id="edit_reply_form" name="edit" type="text" class="input" data-type=""  required>
                        </div>

                        <div class="group">
                            <input type="submit" class="button" value="现在注册">
                        </div>

                        <div class="hr"></div>

                        <div class="foot-lnk">
                            <label for="tab-1">已有账号，现在登录</label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script>
        function check2pwd() {
            if(input1.value != input2.value) {
                alert("两次输入密码不一致！")
                input2.value = "";
            }
        }
    </script>
    </body>
</html>