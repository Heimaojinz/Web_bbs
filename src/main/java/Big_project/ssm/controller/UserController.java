package Big_project.ssm.controller;


import Big_project.ssm.Utility;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

@Controller
public class UserController {
    private UserService userService;
    private HashMap<String, String> xingtoken;
    private MailController mailController;
    private AsyncTask async;


    public UserController(UserService userService, MailController mailController, AsyncTask async) {
        this.userService = userService;
        this.mailController = mailController;
        this.async = async;
        this.xingtoken = new HashMap<>();

    }

    @GetMapping("/login")
    public ModelAndView loginView() {
        ModelAndView m = new ModelAndView("user/login");
        return m;
    }

    @PostMapping("/user/add")
    public ModelAndView register(String username, String password, String edit) {
        List<UserModel> user = userService.all();
        boolean s = userService.ft(user, username);
        if (s) {
            userService.add(username, password, edit);
            return new ModelAndView("redirect:/login");
        } else {
            return new ModelAndView("/failure");
        }
    }

    @PostMapping("/user/login")
    public ModelAndView login(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserModel user = userService.findByUsername(username);
        if (userService.validateLogin(username, password)) {
            Utility.log("????????????: %s", user);
            HttpSession session = request.getSession();
            session.setAttribute("user_id", user.getId());
            return new ModelAndView("redirect:/");
        } else {
            return new ModelAndView("redirect:/login");
        }
    }


    // ????????????
    @GetMapping("/reset/send-")
    public ModelAndView zView() {
        ModelAndView m = new ModelAndView("user/Edit Page");
        return m;
    }


    // ????????????????????????
    @PostMapping("/reset/send")
    public ModelAndView send(String name) {
        Utility.log("?????????: %s", name);
        UserModel user = userService.findByUsername(name);
        if (user == null) {
            return new ModelAndView("user/login");
        } else {
            String token = UUID.randomUUID().toString();
            xingtoken.put(token, user.getId().toString());
            // ??????
            String http = "http://localhost:9000";
            String youjian = http + "/reset/view?token=" + token;
            this.async.sendMailAsync(user.getEmail(), "??????" + name + "??????", youjian);

            ModelAndView m = new ModelAndView("user/login");
            return m;
        }
    }

    // ??????????????????????????????????????????
    @GetMapping("/reset/view")
    public ModelAndView view(String token) {
        Utility.log("token: %s", token);
        if (token == null) {
            return new ModelAndView("redirect:reset/send-");
        } else {
            ModelAndView m = new ModelAndView("user/edit");
            m.addObject("token", token);
            return m;
        }
    }

    //  ???????????????????????????
    @PostMapping("/reset/update")
    public ModelAndView userupdate(String mima, String token) {

        Integer user_id = Integer.valueOf(xingtoken.get(token));
        UserModel user = userService.findById(user_id);
        userService.userupdate(mima, user.getId());
        xingtoken.remove(token);
        ModelAndView m = new ModelAndView("user/login");
        return m;
    }


    //????????????
    @GetMapping("/Setting")
    public ModelAndView Setting(HttpServletRequest request) {
        UserModel user = userService.currentUser(request);

        ModelAndView m = new ModelAndView("user/Setting");
        m.addObject("user", user);
        return m;
    }

    //??????????????????
    @PostMapping("/setting/update")
    public ModelAndView setting_update(String avatar, String name, String email, String  signature, HttpServletRequest request) {
        String avatar1 = avatar.replace("/", "");
        UserModel user = userService.currentUser(request);

        userService.setting_update(user.getId(), name, email, signature, avatar1);
        return new ModelAndView("redirect:/Setting");
    }

    // ??????????????????
    @PostMapping("/setting/password")
    public ModelAndView setting_password(String old_pass, String new_pass, HttpServletRequest request) {
        UserModel user = userService.currentUser(request);

        Utility.log("?????? ??????: %s, %s", old_pass, new_pass);
        if (user.getPassword().equals(old_pass)) {
            userService.userupdate(new_pass, user.getId());
            return new ModelAndView("redirect:/Setting");
        } else {
            return new ModelAndView("/failure");
        }
    }


    // ????????????
    @PostMapping("/loginOut")
    public void loginOut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // ??????cookie???session
        HttpSession session = request.getSession();
        session.removeAttribute("user");

        Cookie[] cookies = request.getCookies();

        Utility.log("cookies: %s, %s", cookies, session);
        if (cookies != null && cookies.length > 0) {
            for (Cookie c : cookies) {
                if ("autoLogin".equals(c.getName())) {
                    //??????cookie???????????????0
                    c.setMaxAge(0);
                    //???cookie???????????????
                    response.addCookie(c);
                    break;
                }
            }
        }
        // ??????????????????
        response.sendRedirect(request.getContextPath() + "/");
    }
}
