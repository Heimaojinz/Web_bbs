package Big_project.ssm.service;


import Big_project.ssm.mapper.UserMapper;
import Big_project.ssm.model.MessageModel;
import Big_project.ssm.model.UserModel;
import Big_project.ssm.model.UserRole;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserService {
    String dir = "1.jpeg";
    String dir1 = "2.jpeg";
    private UserMapper mapper;

    public UserService(UserMapper topicMapper) {
        this.mapper = topicMapper;
    }

    public UserModel add(String username, String password, String edit) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        String signature = "这家伙很懒，什么个性签名都没有留下。";
        UserModel m = new UserModel();
        m.setUsername(username);
        m.setPassword(password);
        m.setRole(UserRole.normal);
        m.setCreatedTime(unixTime.hashCode());
        m.setUpdatedTime(unixTime.intValue());
        m.setAvatar(dir);
        m.setEmail(edit);
        m.setSignature(signature);
        mapper.insert(m);
        return m;
    }

    public boolean ft (List<UserModel> user, String name) {
        boolean s = true;
        for (UserModel a:user) {
            String username = a.getUsername();
            if (name.equals(username)) {
                return s = false;
            } else {
                return s = true;
            }
        }
        return s;
    }

    
    public void update(Integer id, String username, String password) {
        UserModel m = new UserModel();
        m.setId(id);
        m.setUsername(username);
        m.setPassword(password);
        mapper.update(m);
    }
    
    public void delete(Integer id) {
        mapper.delete(id);
    }

    public  UserModel findById(Integer id) {
        return mapper.selectOne(id);
    }

    public  UserModel findByUsername(String username) {
        return mapper.selectOneByUsername(username);
    }
    
    public boolean validateLogin(String username, String  password) {
        UserModel userModel = mapper.selectOneByUsername(username);
        if (userModel != null && userModel.getPassword().equals(password)) {
            return true;
        } else {
            return false;
        }
    }

    public UserModel guest() {
        String signature = "这家伙很懒，什么个性签名都没有留下。";

        UserModel user = new UserModel();
        user.setRole(UserRole.guest);
        user.setId(-1);
        user.setUsername("游客");
        user.setPassword("游客");
        user.setAvatar(dir1);
        user.setSignature(signature);
        return user;
    }

    public UserModel currentUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Integer id = (Integer) session.getAttribute("user_id");
        if (id == null) {
            return this.guest();
        } else {
            UserModel userModel = mapper.selectOne(id);
            if (userModel == null) {
                return this.guest();
            } else {
                return userModel;
            }
        }
    }
    
    public  List<UserModel> all() {
        return mapper.selectAll();
    }


    public void userupdate(String password, Integer id) {
        UserModel m = new UserModel();
        m.setId(id);
        m.setPassword(password);
        mapper.updated(m);
    }

    public List<UserModel> messageall (int receiverId) {
        return mapper.messageAll(receiverId);
    }

    public List<UserModel> messageall2 (int receiverId) {
        return mapper.messageAll2(receiverId);
    }

    public void setting_update(Integer id, String name, String email, String signature, String avatar) {
        UserModel m = new UserModel();
        m.setId(id);
        m.setUsername(name);
        m.setEmail(email);
        m.setSignature(signature);
        m.setAvatar(avatar);
        mapper.setting_update(m);
    }
}
