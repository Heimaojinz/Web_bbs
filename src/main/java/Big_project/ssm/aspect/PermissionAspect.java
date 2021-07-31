package Big_project.ssm.aspect;


import Big_project.ssm.service.TopicService;
import Big_project.ssm.service.UserService;
import Big_project.ssm.Utility;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.model.UserRole;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

// 会被注册成切面，这样方法才会在事件发生的时候执行
@Aspect
// 自动注册成 spring bean，这样 spring 就能认得出这个类
@Component
public class PermissionAspect {
    private HttpServletRequest request;
    private UserService userService;
    private TopicService topicService;

    public PermissionAspect(HttpServletRequest request, UserService userService, TopicService topicService) {
        this.request = request;
        this.userService = userService;
        this.topicService = topicService;
    }


//    @Before("execution(* kybmig.ssm.controller.TodoController.*(..))")
//    public void matchSingle() {
//        Utility.log("最简单的单方法匹配 %s", request.getRequestURI());
//    }

//    @Around("execution(* kybmig.ssm.controller.TodoController.index(..)) || execution(* kybmig.ssm.controller.TodoController.edit(..))")
//    public ModelAndView matchSingle(ProceedingJoinPoint joint) throws Throwable {
//        Utility.log("路由函数之前执行 %s", request.getRequestURI());
//
//        // 这一句就是在执行路由函数
//        ModelAndView result = (ModelAndView) joint.proceed();
//
//        Utility.log("路由函数之后执行 %s", request.getRequestURI());
//        return result;
//    }

    @Around("execution(* Big_project.ssm.controller.TopicController.add(..)) || " +
            "execution(* Big_project.ssm.controller.TopicController.index(..)) ||  " +
            "execution(* Big_project.ssm.controller.TopicController.index1(..)) || " +
            "execution(* Big_project.ssm.controller.TopicController.updateMapper(..)) ||" +
            "execution(* Big_project.ssm.controller.TopicController.edit(..)) ||" +
            "execution(* Big_project.ssm.controller.TopicController.deleteMapper(..)) ||" +
            "execution(* Big_project.ssm.controller.UserController.Setting(..))")
    public ModelAndView topicloginRequired(ProceedingJoinPoint joint) throws Throwable {
        // 在 TodoController 下面所有方法被执行的时候调用
        // @Around 能在执行方法之前和之后处理。由 loginRequired 决定什么时候调用 controller 的方法。
        // execution 匹配方法执行。Aspect 功能非常多，除了能在方法执行的时候插入，还能在其他地方插入。
        // * kybmig.ssm.controller.TodoController.*(..)
        // 第一个 *，匹配任意的方法返回值
        // 第二个 *，匹配 TodoController 下的任意方法，可以把 * 换成具体方法名。这里有自动补全。
        // (..) 匹配任意参数签名
        // 简写 @Around("within(kybmig.ssm.controller.TodoController)")
        // ProceedingJoinPoint 正在被调用的方法
        // 返回值类型要和被处理的控制器方法类型一样。所以 TodoController 的所有方法返回值都要是 ModelAndView
        Utility.log("loginRequired 正在访问的 url %s", request.getRequestURI());
        Utility.log("loginRequired 正在执行的方法 %s %s", joint.getSignature(), joint.getArgs());
        Integer userID = (Integer) request.getSession().getAttribute("user_id");
        if (userID == null) {
            // 跳转回登陆页面
            Utility.log("loginRequired 没有 session");
            return new ModelAndView("redirect:/login");
        } else {
            UserModel u = userService.findById(userID);
            if (u == null || u.getRole().equals(UserRole.guest)) {
                // 跳转回登陆页面
                Utility.log("loginRequired 用户不存在 %s", userID);
                return new ModelAndView("redirect:/login");
//            } else  if(!u.getId().equals(userID)) {
//                return new ModelAndView("redirect:/login");
            } else {
                // 执行被插入的方法
                return (ModelAndView) joint.proceed();
            }
        }
    }

    @Around("execution(* Big_project.ssm.controller.TopicCommentController.*(..))")
    public ModelAndView loginRequired(ProceedingJoinPoint joint) throws Throwable {
        // 在 TodoController 下面所有方法被执行的时候调用
        // @Around 能在执行方法之前和之后处理。由 loginRequired 决定什么时候调用 controller 的方法。
        // execution 匹配方法执行。Aspect 功能非常多，除了能在方法执行的时候插入，还能在其他地方插入。
        // * kybmig.ssm.controller.TodoController.*(..)
        // 第一个 *，匹配任意的方法返回值
        // 第二个 *，匹配 TodoController 下的任意方法，可以把 * 换成具体方法名。这里有自动补全。
        // (..) 匹配任意参数签名
        // 简写 @Around("within(kybmig.ssm.controller.TodoController)")
        // ProceedingJoinPoint 正在被调用的方法
        // 返回值类型要和被处理的控制器方法类型一样。所以 TodoController 的所有方法返回值都要是 ModelAndView
        Utility.log("loginRequired 正在访问的 url %s", request.getRequestURI());
        Utility.log("loginRequired 正在执行的方法 %s %s", joint.getSignature(), joint.getArgs());
        Integer userID = (Integer) request.getSession().getAttribute("user_id");
        if (userID == null) {
            // 跳转回登陆页面
            Utility.log("loginRequired 没有 session");
            return new ModelAndView("redirect:/login");
        } else {
            UserModel u = userService.findById(userID);
            if (u == null || u.getRole().equals(UserRole.guest)) {
                // 跳转回登陆页面
                Utility.log("loginRequired 用户不存在 %s", userID);
                return new ModelAndView("redirect:/login");
            } else {
                // 执行被插入的方法
                return (ModelAndView) joint.proceed();
            }
        }
    }
// || execution(* kybmig.ssm.controller.TopicController.add(..)) || execution(* kybmig.ssm.controller.TopicController.updateMapper(..))
//    @Around("execution(* kybmig.ssm.controller.TopicController.*(..))|| execution(* kybmig.ssm.controller.TopicController.deleteMapper(..))  || execution(* kybmig.ssm.controller.TopicController.edit(..)) ")
//    public ModelAndView ownerRequired(ProceedingJoinPoint joint) throws Throwable {
//        // 在 TodoController 下面所有方法被执行的时候调用
//        // @Around 能在执行方法之前和之后处理。由 loginRequired 决定什么时候调用 controller 的方法。
//        // execution 匹配方法执行。Aspect 功能非常多，除了能在方法执行的时候插入，还能在其他地方插入。
//        // * kybmig.ssm.controller.TodoController.*(..)
//        // 第一个 *，匹配任意的方法返回值
//        // 第二个 *，匹配 TodoController 下的任意方法，可以把 * 换成具体方法名。这里有自动补全。
//        // (..) 匹配任意参数签名
//        // 简写 @Around("within(kybmig.ssm.controller.TodoController)")
//        // ProceedingJoinPoint 正在被调用的方法
//        // 返回值类型要和被处理的控制器方法类型一样。所以 TodoController 的所有方法返回值都要是 ModelAndView
//        Utility.log("ownerRequired 正在访问的 url %s", request.getRequestURI());
//        Utility.log("ownerRequired 正在执行的方法 %s %s", joint.getSignature(), joint.getArgs());
//        Integer userID = (Integer) request.getSession().getAttribute("user_id");
//        Integer topicId = Integer.valueOf(request.getParameter("id"));
//        if (userID == null) {
//            // 跳转回登陆页面
//            Utility.log("ownerRequired 没有 session");
//            return new ModelAndView("redirect:/login");
//        } else {
//            UserModel u = userService.findById(userID);
//            if (u == null || u.getRole().equals(UserRole.guest)) {
//                // 跳转回登陆页面
//                Utility.log("ownerRequired 用户不存在 %s", userID);
//                return new ModelAndView("redirect:/login");
//            } else {
//                TopicModel topic = topicService.findById(topicId);
//                if (topic == null) {
//                    return new ModelAndView("redirect:/topic");
//                } else {
//                    if (topic.getUserId().equals(userID)) {
//                        // 执行被插入的方法
//                        return (ModelAndView) joint.proceed();
//                    } else {
//                        return new ModelAndView("redirect:/login");
//                    }
//                }
//            }
//        }
//    }
}

