package Big_project.ssm.model;

import java.util.ArrayList;

public class MessageModel extends BaseModel{
    private int id;
    private String content;  //私信内容
    private Integer senderId; //发送方用户 id
    private Integer receiverId; //接收方用户 id
    private Long createdTime; // 创建时间
    private Long updatedTime; // 升级时间
    private String classify;  // 分类
    private String whether;
    private ArrayList<TopicCommentModel> commentList;
    private UserModel user;
    private Integer topic_Id;

    public String getWhether() {
        return whether;
    }

    public void setWhether(String whether) {
        this.whether = whether;
    }

    public Integer getTopic_Id() {
        return topic_Id;
    }

    public void setTopic_Id(Integer topic_Id) {
        this.topic_Id = topic_Id;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }

    public ArrayList<TopicCommentModel> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<TopicCommentModel> commentList) {
        this.commentList = commentList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getSenderId() {
        return senderId;
    }

    public void setSenderId(Integer senderId) {
        this.senderId = senderId;
    }

    public Integer getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(Integer receiverId) {
        this.receiverId = receiverId;
    }

    public Long getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Long createdTime) {
        this.createdTime = createdTime;
    }

    public Long getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Long updatedTime) {
        this.updatedTime = updatedTime;
    }
}
