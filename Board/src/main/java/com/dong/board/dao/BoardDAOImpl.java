package com.dong.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dong.board.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	SqlSessionTemplate template;
	
	
	@Override
	public int boardAdd(BoardDTO bdto) {
		return template.insert("board.boardadd",bdto);
	}
	
	@Override
	public List<BoardDTO> blist() {
		return template.selectList("board.blist");
	}
	
	
	@Override
	public BoardDTO getBDTO(String bseq) {
		return template.selectOne("board.getbdto",bseq);
	}

	@Override
	public int editok(BoardDTO bdto) {
		return template.update("board.editok",bdto);
	}

	@Override
	public void deleteBrd(String bseq) {
		template.delete("board.deleteok",bseq);
	}
}
