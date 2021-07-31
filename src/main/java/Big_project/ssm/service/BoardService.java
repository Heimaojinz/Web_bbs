package Big_project.ssm.service;


import Big_project.ssm.mapper.BoardMapper;
import Big_project.ssm.model.BoardModel;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
    private BoardMapper mapper;


    public BoardService(BoardMapper boardMapper) {
        this.mapper = boardMapper;
    }

    public BoardModel findByname(String name) {
        return mapper.selectOne(name);
    }

    public BoardModel selectOneall(Integer id) {
        return mapper.selectOneall(id);
    }
}