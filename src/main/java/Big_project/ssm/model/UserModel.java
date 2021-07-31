package Big_project.ssm.model;

import java.util.ArrayList;

public class UserModel {
    private Integer id;
    private String username;
    private String password;
    private UserRole role;
    private Integer createdTime;
    private Integer updatedTime;
    private String avatar;
    private String email;
    private ArrayList<TopicCommentModel> commentList;
    private String signature;

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public ArrayList<TopicCommentModel> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<TopicCommentModel> commentList) {
        this.commentList = commentList;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setUpdatedTime(Integer updatedTime) {
        this.updatedTime = updatedTime;
    }

    public Integer getUpdatedTime() {
        return updatedTime;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }


}
