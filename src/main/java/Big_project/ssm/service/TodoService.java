package Big_project.ssm.service;


import Big_project.ssm.Utility;
import Big_project.ssm.mapper.TodoMapper;
import Big_project.ssm.model.TodoModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TodoService {
    private TodoMapper mapper;
    
    public TodoService(TodoMapper todoMapper) {
        this.mapper = todoMapper;
    }
    
    public TodoModel add(String content) {
        TodoModel m = new TodoModel();
        m.setContent(content);
        Utility.log("mapper add before <%s>", m);
        mapper.insertTodo(m);
        Utility.log("mapper add after <%s>", m);
        return m;
    }
    
    public  void update(Integer id, String content) {
        TodoModel m = new TodoModel();
        m.setId(id);
        m.setContent(content);
        mapper.updateTodo(m);
    }
    
    public void delete(Integer id) {
        mapper.deleteTodo(id);
    }

    public  TodoModel findById(Integer id) {
        return mapper.selectTodo(id);
    }
    
    public  List<TodoModel> all() {
        return mapper.selectAllTodo();
    }
}
