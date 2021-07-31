上已线http://1.116.174.172/  H欢迎访问.        

技术栈:  Java + SSM (Spring + Spring MVC + MyBatis) + MySQL + Linux/Ubuntu + Tomcat + Redis + Nginx

主要功能:

1. 用户模块, 登陆注册, 用户权限, 个人主页和个人信息管理.

2. 话题的编辑, 发布, 删除, 评论, 贴子所属板块, @ 功能.

3. 邮件通知与系统消息通知, 用户间私聊, 支持系统消息和私信的批量管理.

• 使用 Spring Boot 自动配置, Spring MVC 作为框架, Tomcat 作为 Servlet 容器.

• 数据储存使用 MySQL, ORM 使用 MyBatis.

• 项目部署使用 Nginx 作为反向代理, 处理静态资源缓存压缩, 配置 HTTPS.

• 对变动频率较低的数据进行基于 Redis 的缓存优化, 邮件发送使用消息队列实现异步非阻塞发送.

• 实现对 CSRF, XSS, SQL注入攻击的防御.
