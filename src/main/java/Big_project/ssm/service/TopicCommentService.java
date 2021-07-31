package Big_project.ssm.service;


import Big_project.ssm.mapper.TopicCommentMapper;
import Big_project.ssm.model.TopicCommentModel;
import Big_project.ssm.model.UserModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopicCommentService {
    private TopicCommentMapper mapper;


    public TopicCommentService( TopicCommentMapper commentMapper) {
        this.mapper = commentMapper;
    }

    public String add(String content, List<UserModel> user) {

        String s = content;
        String useradd = "";

        if (s.charAt(0)  ==  '@' ) {
            for (UserModel a:user) {
                String c = a.getUsername();
                for (int i = 0; i < c.length(); i++) {
                    if (c.charAt(i) == s.charAt(i + 1)) {
                        useradd += s.charAt(i + 1);
//                        Utility.log("比对成功: <%s>", useradd);
                        if (useradd.equals(c.replace(" ", ""))) {
//                            UserModel receiver = userService.findByUsername(useradd);
//                            messageService.add(receiver.getId(), content, current.getId());
//                            Utility.log("结束 <%s>, <%s>", useradd, c);
                            return c;
                        }
                    } else {
//                        Utility.log("结束 <%s>, <%s>", useradd, c);
                        useradd = "";
                        break;
                    }
                }
            }
        }
        return useradd;
    }



    public  TopicCommentModel add(Integer userId, String content, Integer topicid) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        TopicCommentModel m = new TopicCommentModel();
        m.setContent(content);
        m.setUserId(userId);
        m.setTopicId(topicid);
        m.setCreatedTime(unixTime.hashCode());
        m.setUpdatedTime(unixTime.hashCode());
        mapper.insert(m);
        return m;
    }

    public void update(Integer id, String content) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        TopicCommentModel m = new TopicCommentModel();
        m.setId(id);
        m.setContent(content);
        m.setUpdatedTime(unixTime.hashCode());
        mapper.update(m);
    }

    public void delete(Integer id) {
        mapper.delete(id);
    }


    public TopicCommentModel findById(Integer id) {
        return mapper.selectOne(id);
    }

    public TopicCommentModel selectallOne(Integer id) {
        return mapper.selectallOne(id);
    }

    public TopicCommentModel selectOne(Integer id) {
        return mapper.selectOne(id);
    }
}
