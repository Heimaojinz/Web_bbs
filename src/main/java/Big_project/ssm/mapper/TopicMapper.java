package Big_project.ssm.mapper;

import Big_project.ssm.model.TopicCommentModel;
import Big_project.ssm.model.TopicModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface TopicMapper {
    void insert(TopicModel topic);

    List<TopicModel> selectAll();

    List<TopicModel>  selectAll_board();

    TopicModel selectOne(int id);

    void visit_update(TopicModel topic);

    void toiccomment_Visit_update(TopicModel topic);

    List<TopicModel> selectOnetab(int id);

    List<TopicModel> selectAllOneboard(int id);

    List<TopicModel> selectallOne(int id);


    void update(TopicModel topic);

    void delete(int id);

    TopicModel selectOneWithComments(int id);

    List<TopicModel> selectOneWithCommentsAndUser(int id);

    List<TopicModel> selectOneWithCommentsMapall(int id);

    List<TopicCommentModel> selectOneWithCommentsAndUseraop (int id);

    TopicModel selectOnetopic (int id);

 }
