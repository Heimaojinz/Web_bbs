package Big_project.ssm.controller;


import Big_project.ssm.Utility;
import Big_project.ssm.model.MessageModel;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.service.MessageService;
import Big_project.ssm.service.TopicCommentService;
import Big_project.ssm.service.TopicService;
import Big_project.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MessageController {
    private UserService userService;
    private MessageService messageService;


    public MessageController(TopicService topicService,
                             UserService userService,
                             TopicCommentService topicCommentService,
                             MessageService messageService) {
        this.userService = userService;
        this.messageService = messageService;
    }


    //  私信页面
    @GetMapping("/message")
    public ModelAndView all(Integer id, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        List<MessageModel> message = messageService.index(id, user.getId());

        UserModel user1 = userService.findById(id);
        Utility.log("看看数据： %s",message);

        ModelAndView m = new ModelAndView("forum/message");
        m.addObject("message", message);
        m.addObject("receiverUsername", user1);
        m.addObject("person_user", user);
        return m;
    }

    // 提交私信
    @PostMapping("/message/add")
    public ModelAndView add(String name,  String content, HttpServletRequest request) {
        String sort = "私信";

        UserModel user = userService.currentUser(request);
        UserModel receiver = userService.findByUsername(name);

        Utility.log("看看数据1： %s, %s", user.getUsername(), receiver.getUsername());
        messageService.add(receiver.getId(), content, user.getId(), sort, 0);
        return new ModelAndView("redirect:/message?id=" + receiver.getId());
    }

//    //  @功能
//    @GetMapping("/message/queryUser")
//    @ResponseBody
//    public List<String> queryuser(String receiverUsername) {
//        List<UserModel> user = userService.all();
//        List<String> find = messageService.find(user, receiverUsername);
//        return find;
//    }

    @GetMapping("/message/delete")
    public ModelAndView delete(Integer id, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        Utility.log("用户id： %s", id );
        messageService.delete(id, user.getId());
        return new ModelAndView("redirect:/topic/homepage");
    }

    @GetMapping("/message/delete2")
    public ModelAndView delete2(Integer id, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        MessageModel userid = messageService.findid(id);
        messageService.delete2(id);

        if (userid.getSenderId() == user.getId()) {
            Utility.log("用户id： %s", userid);
            return new ModelAndView("redirect:/message?id=" + userid.getReceiverId());
        } else {
            return new ModelAndView("redirect:/message?id=" + userid.getSenderId());
        }
    }

    @GetMapping("/message/index")
    public ModelAndView index(Integer id) {
        return new ModelAndView("redirect:/message?id=" + id);
    }
}