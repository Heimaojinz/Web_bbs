package Big_project.ssm.service;


import Big_project.ssm.Utility;
import Big_project.ssm.model.MessageModel;
import Big_project.ssm.model.UserModel;
import org.springframework.beans.factory.support.ManagedList;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import Big_project.ssm.mapper.MessageMapper;

@Service
public class MessageService {
    private MessageMapper mapper;


    public MessageService(MessageMapper mapper) {
        this.mapper = mapper;
    }

    public  List<MessageModel> all(Integer id, String classify) {
        return mapper.selectAll(id, classify);
    }

    public MessageModel add(Integer receiver_id, String content, Integer user_id, String sort, int id) {
        Long unixTime = System.currentTimeMillis() / 1000L;
        MessageModel m = new MessageModel();
        m.setContent(content);
        m.setReceiverId(receiver_id);
        m.setSenderId(user_id);
        m.setCreatedTime(unixTime);
        m.setUpdatedTime(unixTime);
        m.setClassify(sort);
        m.setTopic_Id(id);
        mapper.insert(m);
        return m;
    }

    public List<String> find(List<UserModel> user, String receiverUsername) {

        List<String> find = new LinkedList<>();
        for (UserModel a: user) {
            String name = a.getUsername();
            if (name.contains(receiverUsername)) {
                //  相似的就存起来
                find.add(name);
            }
        }
        return find;
    }

    public void delete(Integer id, Integer user_id) {
        MessageModel m = new MessageModel();
        m.setReceiverId(user_id);
        m.setSenderId(id);
        mapper.delete(m);
    }

    public List<MessageModel> index(Integer id, Integer user_id) {
        MessageModel m = new MessageModel();
        m.setReceiverId(user_id);
        m.setSenderId(id);
        return mapper.index(m);

    }

    public void delete2(Integer id) {
        mapper.delete2(id);
    }

    public MessageModel findid(Integer id) {
        return mapper.findid(id);
    }

}
