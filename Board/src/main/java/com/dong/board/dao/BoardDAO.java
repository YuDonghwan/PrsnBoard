package com.dong.board.dao;

import java.util.List;

import com.dong.board.dto.BoardDTO;

public interface BoardDAO {

	int boardAdd(BoardDTO bdto);

	List<BoardDTO> blist();

	BoardDTO getBDTO(String bseq);


}
