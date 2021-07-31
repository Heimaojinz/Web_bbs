package Big_project.ssm.controller;

import Big_project.ssm.service.BoardService;

public class BoardController {
    private BoardService boardService;
//    private TodoService todoService = new TodoService();

    public BoardController(BoardService boardService) {
        this.boardService = boardService;
    }

}
