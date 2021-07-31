package Big_project.ssm.mapper;

import Big_project.ssm.Utility;
import Big_project.ssm.model.MessageModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface MessageMapper {
    void insert(MessageModel topic);

    List<MessageModel> selectAll(Integer id, String classify);

    List<MessageModel> index(MessageModel messageModel);

    //
//    UserModel selectOneByUsername(String username);
//
    MessageModel findid(Integer id);
//
    void delete(MessageModel messageModel);

    void delete2(Integer id);

}
