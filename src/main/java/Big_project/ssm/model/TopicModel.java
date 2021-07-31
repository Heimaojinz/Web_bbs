package Big_project.ssm.model;

import java.util.ArrayList;

public class TopicModel extends BaseModel {
    private Integer id;
    private String title;
    private String content;
    private Integer userId;
    private Integer boardId;
    private Integer createdTime;
    private Integer updatedTime;
    private UserModel user;
    private BoardModel board;
    private Integer Visit;
    private Integer toiccomment_Visit;

    public Integer getToiccomment_Visit() {
        return toiccomment_Visit;
    }

    public void setToiccomment_Visit(Integer toiccomment_Visit) {
        this.toiccomment_Visit = toiccomment_Visit;
    }

    public Integer getVisit() {
        return Visit;
    }

    public void setVisit(Integer visit) {
        Visit = visit;
    }

    public BoardModel getBoard() {
        return board;
    }

    public void setBoard(BoardModel board) {
        this.board = board;
    }

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }


    public void setUpdatedTime(Integer updatedTime) {
        this.updatedTime = updatedTime;
    }

    public Integer getUpdatedTime() {
        return updatedTime;
    }

    public Integer getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Integer createdTime) {
        this.createdTime = createdTime;
    }

    private ArrayList<TopicCommentModel> commentList;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public ArrayList<TopicCommentModel> getCommentList() {
        return commentList;
    }

    public void setCommentList(ArrayList<TopicCommentModel> commentList) {
        this.commentList = commentList;
    }

    public Integer getBoardId() {
        return boardId;
    }

    public void setBoardId(Integer boardId) {
        this.boardId = boardId;
    }
}
