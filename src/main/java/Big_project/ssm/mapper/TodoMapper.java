package Big_project.ssm.mapper;

import Big_project.ssm.model.TodoModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface TodoMapper {
    void insertTodo(TodoModel todo);

    List<TodoModel> selectAllTodo();

    TodoModel selectTodo(int id);

    void updateTodo(TodoModel todo);

    void deleteTodo(int id);
}
