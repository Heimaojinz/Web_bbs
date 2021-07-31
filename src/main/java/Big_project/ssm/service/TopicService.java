package Big_project.ssm.service;


import Big_project.ssm.mapper.TopicCommentMapper;
import Big_project.ssm.mapper.TopicMapper;
import Big_project.ssm.model.TopicCommentModel;
import Big_project.ssm.model.TopicModel;
import Big_project.ssm.model.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopicService {
    private TopicMapper mapper;
    private TopicCommentMapper commentMapper;


    public TopicService(TopicMapper topicMapper, TopicCommentMapper commentMapper) {
        this.mapper = topicMapper;
        this.commentMapper = commentMapper;
    }

    public  void visit(Integer visit_id, Integer id) {
        TopicModel m = new TopicModel();
        m.setId(id);
        m.setVisit(visit_id + 1);
        mapper.visit_update(m);
    }

    public  void toiccomment_Visit(Integer toiccomment_Visit, Integer id) {
        TopicModel m = new TopicModel();
        m.setId(id);
        m.setToiccomment_Visit(toiccomment_Visit + 1);
        mapper.toiccomment_Visit_update(m);
    }

    public  void toiccomment__Visit(Integer toiccomment_Visit, Integer id) {
        TopicModel m = new TopicModel();
        m.setId(id);
        m.setToiccomment_Visit(toiccomment_Visit - 1);
        mapper.toiccomment_Visit_update(m);
    }


    public TopicModel add(Integer userId , String title, String content, Integer boardId) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        TopicModel m = new TopicModel();
        m.setTitle(title);
        m.setContent(content);
        m.setUserId(userId);
        m.setBoardId(boardId);
        m.setCreatedTime(unixTime.hashCode());
        m.setUpdatedTime(unixTime.intValue());
        m.setVisit(0);
        m.setToiccomment_Visit(0);
        mapper.insert(m);
        return m;
    }

    public  void update(Integer id, String title, String content) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        TopicModel m = new TopicModel();
        m.setId(id);
        m.setContent(content);
        m.setTitle(title);
        m.setUpdatedTime(unixTime.hashCode());
        mapper.update(m);
    }
    
    public void delete(Integer id) {
        mapper.delete(id);
    }

    public  TopicModel findById(Integer id) {
        return mapper.selectOne(id);
    }

    public  List<TopicModel> selectOnetab(Integer id) {
        return mapper.selectOnetab(id);
    }

    public  List<TopicModel> selectAllOneboard(Integer id) {
        return mapper.selectAllOneboard(id);
    }

    public  List<TopicModel> findByIdall(Integer id) {
        return mapper.selectallOne(id);
    }

    public  TopicModel findByIdWithComments(Integer id) {
        return mapper.selectOneWithComments(id);
    }

    public  List<TopicModel> findByIdWithCommentsAndUser(Integer id) {
        return mapper.selectOneWithCommentsAndUser(id);
    }


    public List<TopicModel> selectOneWithCommentsMapall(Integer id) {
        return mapper.selectOneWithCommentsMapall(id);
    }

    public  List<TopicModel> all() {
        return mapper.selectAll();
    }

    public  List<TopicModel> selectAll_board() {
        return mapper.selectAll_board();
    }

    public List<TopicCommentModel> findCommentsById(Integer id) {
        return this.commentMapper.selectAllByTopicId(id);
    }

    public  List<TopicCommentModel> selectOneWithCommentsAndUseraop(Integer id) {
        return mapper.selectOneWithCommentsAndUseraop(id);
    }

    public  TopicModel selectOne(Integer id) {
        return mapper.selectOnetopic(id);
    }
}
