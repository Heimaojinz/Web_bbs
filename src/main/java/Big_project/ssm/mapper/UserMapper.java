package Big_project.ssm.mapper;

import Big_project.ssm.model.MessageModel;
import Big_project.ssm.model.UserModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface UserMapper {
    void insert(UserModel topic);

    List<UserModel> selectAll();

    UserModel selectOne(int id);
    
    UserModel selectOneByUsername(String username);

    void update(UserModel topic);

    void delete(int id);

    void updated(UserModel topic);

    List<UserModel> messageAll(int receiverId);

    List<UserModel> messageAll2(int receiverId);

    void setting_update(UserModel userModel);
}
