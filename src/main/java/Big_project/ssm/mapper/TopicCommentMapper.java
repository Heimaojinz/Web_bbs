package Big_project.ssm.mapper;

import Big_project.ssm.model.TopicCommentModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface TopicCommentMapper {
    void insert(TopicCommentModel m);

    List<TopicCommentModel> selectAll();

    TopicCommentModel selectOne(int id);

    TopicCommentModel selectallOne(int id);

    void update(TopicCommentModel m);

    void delete(int id);
    
    List<TopicCommentModel> selectAllByTopicId(Integer id);
}
