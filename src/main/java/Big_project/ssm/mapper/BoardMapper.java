package Big_project.ssm.mapper;

import Big_project.ssm.model.BoardModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface BoardMapper {
    void insert(BoardModel board);

    List<BoardModel> selectAll();

    BoardModel selectOne(String name);

    BoardModel selectOneall(Integer id);

//    void update(BoardModel board);
//
//    void delete(int id);
//
//    BoardModel selectOneWithComments(int id);
//    BoardModel selectOneWithCommentsAndUser(int id);
}