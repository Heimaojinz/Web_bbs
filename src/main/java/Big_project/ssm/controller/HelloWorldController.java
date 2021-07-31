package Big_project.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {

    @GetMapping("/demo")
    public ModelAndView demoRoute(
            @RequestParam(name="name", required=false, defaultValue="默认名字测试")
                    String name) {

        // model 说的是给模板引擎的 model
        // view 说的是模板名字，没有后缀
        // view 可以自动补全，也可以直接跳转
        ModelAndView mv = new ModelAndView("hello");
        mv.addObject("name", name);
        return mv;
    }

    @GetMapping("/demo1")
    // 会自动从 reqeust 里面找名字为 gua 的参数
    public ModelAndView demoRoute1(String gua) {

        // model 说的是给模板引擎的 model
        // view 说的是模板名字，没有后缀
        // view 可以自动补全，也可以直接跳转
        ModelAndView mv = new ModelAndView("hello");
        mv.addObject("name", gua);
        return mv;
    }


    @GetMapping("/demo2")
    // 从 HttpServletRequest 里面取参数
    public ModelAndView demoRoute2(HttpServletRequest request) {

        // model 说的是给模板引擎的 model
        // view 说的是模板名字，没有后缀
        // view 可以自动补全，也可以直接跳转
        ModelAndView mv = new ModelAndView("hello");
        String name = request.getParameter("name");
        mv.addObject("name", name);
        return mv;
    }


    // 动态路由
    // 如果访问 /demo3/xubai, 那么 xubai 就会当做参数传给路由函数
    @GetMapping("/demo3/{name}")
    // 从 HttpServletRequest 里面取参数
    public ModelAndView demoRoute2(@PathVariable String name) {

        // model 说的是给模板引擎的 model
        // view 说的是模板名字，没有后缀
        // view 可以自动补全，也可以直接跳转
        ModelAndView mv = new ModelAndView("hello");
        mv.addObject("name", name);
        return mv;
    }
}
