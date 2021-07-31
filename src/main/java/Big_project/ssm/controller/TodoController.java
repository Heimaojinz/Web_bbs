package Big_project.ssm.controller;
import Big_project.ssm.Utility;
import Big_project.ssm.model.TodoModel;
import Big_project.ssm.service.TodoService;
import Big_project.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TodoController {
    private TodoService todoService;
    private UserService userService;
//    private TodoService todoService = new TodoService();

    public TodoController(TodoService todoService, UserService userService) {
        this.todoService = todoService;
        this.userService = userService;
    }

    @PostMapping("/todo/add")
    public ModelAndView add(String content) {
        TodoModel todo = todoService.add(content);
        Utility.log("todo add id %s", todo.getId());
        return new ModelAndView("redirect:/todo");
    }

    @GetMapping("/todo/delete")
    public ModelAndView deleteMapper(int id) {
        todoService.delete(id);
        return new ModelAndView("redirect:/todo");
    }

    @GetMapping("/todo/edit")
    public ModelAndView edit(int id) {
        TodoModel todo = todoService.findById(id);
        Utility.log("todo edit: <%s>", todo);

        ModelAndView m = new ModelAndView("todo/todo_edit");
        m.addObject("todo", todo);
        return m;
    }

    @PostMapping("/todo/update")
    public ModelAndView updateMapper(int id, String content) {
        todoService.update(id, content);
        return new ModelAndView("redirect:/todo");
    }

    @GetMapping("/todo")
    public ModelAndView index(HttpServletRequest request) {
        Utility.log("todo index");
//        List<TodoModel> todos = todoService.all();
        List<TodoModel> todos = todoService.all();
        ModelAndView m = new ModelAndView("todo/todo_index");
        m.addObject("todos", todos);
        return m;
    }
}
