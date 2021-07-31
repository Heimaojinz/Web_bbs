package Big_project.ssm.controller;

import Big_project.ssm.Utility;
import Big_project.ssm.model.TopicCommentModel;
import Big_project.ssm.model.TopicModel;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.service.MessageService;
import Big_project.ssm.service.TopicCommentService;
import Big_project.ssm.service.TopicService;
import Big_project.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TopicCommentController {
    private MessageService messageService;
    private TopicService topicService;
    private UserService userService;
    private TopicCommentService topicCommentService;


    public TopicCommentController(TopicService topicService,
                                  UserService userService,
                                  TopicCommentService topicCommentService,
                                  MessageService messageService) {
        this.topicService = topicService;
        this.userService = userService;
        this.topicCommentService = topicCommentService;
        this.messageService = messageService;
    }


    //  添加评论路由
    @PostMapping("/topicController/add")
    public ModelAndView add(Integer id, String content, HttpServletRequest request) {
        String sort = "@信息";
        String whether = "@未读";

        TopicModel topic1 = topicService.findByIdWithComments(id);
        Utility.log("看看： %s", topic1);
        topicService.toiccomment_Visit(topic1.getToiccomment_Visit(), topic1.getId());

        UserModel current = userService.currentUser(request);
        Utility.log("todo add id %s", request);
        topicCommentService.add(current.getId(), content, id);

        if (content.charAt(0)  ==  '@' ) {
            List<UserModel> user = userService.all();
            String useradd = topicCommentService.add(content, user);
            for (UserModel a:user) {
                if (a.getUsername().replace(" ", "").equals(useradd)) {
                    UserModel receiver = userService.findByUsername(useradd);
                    messageService.add(receiver.getId(), content, current.getId(), sort, id);
                }
            }
        }
        return new ModelAndView("redirect:/topic/detail/" + id);
    }


    //删除评论路由
    @GetMapping("/topicController/delete")
    public ModelAndView deleteMapper(int id, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        TopicCommentModel topic = topicCommentService.selectOne(id);
        Utility.log("当前用户: %s", user.getId());
        Utility.log("评论的id: %s", topic);

        if (user.getId().equals(topic.getUserId())) {
            topicCommentService.delete(id);
            TopicModel topic1 = topicService.findByIdWithComments(topic.getTopicId());
            topicService.toiccomment__Visit(topic1.getToiccomment_Visit(), topic1.getId());

            return new ModelAndView("redirect:/topic/detail/" + topic.getTopicId());
        } else {
            return new ModelAndView("redirect:/topic/detail/" + topic.getTopicId());
        }
    }


    // 编辑 评论路由
    @GetMapping("/topicController/edit")
    public ModelAndView edit(int id, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        TopicCommentModel topic = topicCommentService.findById(id);
        Utility.log("当前用户: %s", user.getId());
        Utility.log(" 看看都有啥: %s", topic);

        if(user.getId().equals(topic.getUserId())) {
            ModelAndView m = new ModelAndView("topic/topic_comment_edit");
            m.addObject("topic", topic);
            return m;
        } else  {
            return new ModelAndView("redirect:/topic/detail/" + topic.getTopicId());
        }
    }


    // 更新评论路由
    @PostMapping("/topicController/update")
    public ModelAndView updateMapper(int id, int TopicId, String content) {
        topicCommentService.update(id, content);
        return new ModelAndView("redirect:/topic/detail/" + TopicId);
    }
}
