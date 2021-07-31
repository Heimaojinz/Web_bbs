package Big_project.ssm.controller;

import Big_project.ssm.Utility;
import Big_project.ssm.model.BoardModel;
import Big_project.ssm.model.TopicCommentModel;
import Big_project.ssm.model.TopicModel;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.service.BoardService;
import Big_project.ssm.service.TopicCommentService;
import Big_project.ssm.service.TopicService;
import Big_project.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
public class TopicController {
    private TopicService topicService;
    private UserService userService;
    private BoardService boardService;
    private TopicCommentService topicCommentService;

    public TopicController(TopicService topicService,
                           UserService userService,
                           BoardService boardService,
                           TopicCommentService topicCommentService) {
        this.topicService = topicService;
        this.userService = userService;
        this.boardService = boardService;
        this.topicCommentService = topicCommentService;
    }


    // 添加 帖子 路由
    @PostMapping("/topic/add")
    public ModelAndView add(String tab, String title, String content, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);

        BoardModel board = boardService.findByname(tab);
        Utility.log("板块的ID : %s", tab);

        topicService.add(current.getId(), title, content, board.getId());
        return new ModelAndView("redirect:/topic");
    }

    // 查看 帖子信息
    @GetMapping("/topic/detail/{id}")
    // 从 HttpServletRequest 里面取参数
    public ModelAndView detail(@PathVariable Integer id, HttpServletRequest request) {
            TopicModel topic1 = topicService.findByIdWithComments(id);
//            Utility.log("数量： %s",topic1);

            topicService.visit(topic1.getVisit(), topic1.getId());

            TopicModel topic = topicService.selectOne(id);
            BoardModel board = boardService.selectOneall(topic1.getBoardId());
//            Utility.log("评论内容comments: %s ", board);

            List<TopicCommentModel> comments = topicService.selectOneWithCommentsAndUseraop(topic1.getId());
//            Utility.log("评论信息: %s", comments);

            Utility.log("看看 %s", topic.getUser().getUsername());

            ModelAndView mv = new ModelAndView("topic/detail");

                mv.addObject("board",board);
                mv.addObject("topic", topic);
                mv.addObject("comments", comments);
                mv.addObject("size", comments.size());
                return mv;
        }


// 帖子删除 路由
    @GetMapping("/topic/delete")
    public ModelAndView deleteMapper(int id, HttpServletRequest request) {

        TopicModel topic = topicService.selectOne(id);
        Utility.log("当前帖子的用户: %s", topic.getUserId());
        UserModel user = userService.currentUser(request);
        Utility.log("当前用户: %s", user.getId());

        if(user.getId().equals(topic.getUserId())) {
            topicService.delete(id);
            return new ModelAndView("redirect:/");
        } else {
            return new  ModelAndView("redirect:/topic/detail/" + id);
        }
    }

    // 编辑帖子路由
    @GetMapping("/topic/edit")
    public ModelAndView edit(int id, HttpServletRequest request) {
        TopicModel topic = topicService.selectOne(id);
        UserModel userid = userService.currentUser(request);
        Utility.log("帖子用户id: %s", topic.getId());

        if(userid.getId().equals(topic.getUserId())) {
            TopicModel topics = topicService.findById(id);
            ModelAndView m = new ModelAndView("topic/topic_edit");
            m.addObject("topic", topics);
            return m;
        }  else {
            return new ModelAndView("redirect:/topic/detail/" + id);
        }
    }

    //  更新帖子路由
    @PostMapping("/topic/update")
    public ModelAndView updateMapper(int id, String title, String content) {
            topicService.update(id, title, content);
            Utility.log("帖子内容: %s",content);
            return new ModelAndView("redirect:/topic/detail/" + id);
    }

    //个人用户信息路由
    @GetMapping("/topic")
    public ModelAndView index(HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        Utility.log("当前用户id: %s", user);

        List<TopicModel> topics = topicService.findByIdall(user.getId());
        Utility.log("当前用户的帖子: %s", topics);

        List<TopicModel> topic1 = topicService.selectOneWithCommentsMapall(user.getId());
        Utility.log("当前用户参与过的帖子的: %s",topic1);

        ModelAndView m = new ModelAndView("topic/topic_index");
        m.addObject("topics", topics);
        m.addObject("topicComment", topic1);
        m.addObject("name", user);
        return m;
    }


    //  查看其他用户信息路由
    @GetMapping("/topic_user")
    public ModelAndView index(int id) {
        UserModel user = userService.findById(id);
        Utility.log("帖子当前用户: %s", user.getUsername());

        List<TopicModel> topic = topicService.findByIdall(user.getId());
        Utility.log("当前用户的帖子: %s", topic);

        List<TopicModel> topic1 = topicService.selectOneWithCommentsMapall(user.getId());
       Utility.log("参与过的帖子: %s",topic1);

                ModelAndView m = new ModelAndView("/topic_index_master");
                m.addObject("topics", topic);
                m.addObject("topic", topic1);
                m.addObject("name", user);
                return m;
    }


    //  论坛 主页路由
    @GetMapping("/")
    public ModelAndView index_(HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        List<TopicModel> topics = topicService.selectAll_board();
        Utility.log(" 帖子信息 %s", topics);

        ModelAndView m = new ModelAndView("forum/homepage");
        m.addObject("topics", topics);
        m.addObject("name", user);
        return m;
    }


    // 各类板块 论坛主页
    @GetMapping("/topic/follower")
    public ModelAndView index_(String tab, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);
        BoardModel board = boardService.findByname(tab);

        List<TopicModel> topic = topicService.selectAllOneboard(board.getId());
//        List<TopicModel> topics = topicService.all();
        Utility.log("板块的id: %s", topic);

        ModelAndView m = new ModelAndView("forum/homepage");
        m.addObject("topics", topic);
        m.addObject("name", user);
        return m;
    }



    // 显示添加 帖子页面路由
    @GetMapping("/topic_index/add")
    public ModelAndView index1() {
        ModelAndView m = new ModelAndView("/topic/topic_index_add");
        return m;
    }


}
