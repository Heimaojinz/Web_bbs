package Big_project.ssm.controller;

import Big_project.ssm.Utility;
import Big_project.ssm.model.MessageModel;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.service.MessageService;
import Big_project.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class PublicController {
    private UserService userService;
    private MessageService messageService;

    public PublicController(UserService userService, MessageService messageService) {
        this.userService = userService;
        this.messageService = messageService;
    }

    @GetMapping("/topic/homepage")
    public ModelAndView index(HttpServletRequest request) {

        // model 说的是给模板引擎的 model
        // view 说的是模板名字，没有后缀
        // view 可以自动补全，也可以直接跳转
        UserModel current = userService.currentUser(request);
        Utility.log("用户: %s", current.getAvatar());

        if (current.getUsername().equals("游客")) {
             ModelAndView mv = new ModelAndView("index");
             mv.addObject("username", current);
             return mv;
         } else {
             List<UserModel> message = userService.messageall(current.getId());
             List<UserModel> message2 = userService.messageall2(current.getId());
             Utility.log("@的信息和私信 ; %s", message);
             ModelAndView mv = new ModelAndView("index1");
             mv.addObject("username", current);
             mv.addObject("message", message);
             mv.addObject("message2", message2);
             return mv;
         }
    }

}
