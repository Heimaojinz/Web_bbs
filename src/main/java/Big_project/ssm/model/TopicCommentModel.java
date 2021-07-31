package Big_project.ssm.model;

public class TopicCommentModel extends BaseModel {
    private Integer id;
    private String content;
    private Integer userId;
    private Integer topicId;
    private UserModel user;
    private Integer createdTime;
    private Integer updatedTime;

    public Integer getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Integer updatedTime) {
        this.updatedTime = updatedTime;
    }

    public void setCreatedTime(Integer createdTime) {
        this.createdTime = createdTime;
    }

    public Integer getCreatedTime() {
        return createdTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
 
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }
}
