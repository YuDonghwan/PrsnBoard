package com.dong.board.service;

import java.util.List;

import com.dong.board.dto.BoardDTO;

public interface BoardService {

	int boardAdd(BoardDTO bdto);

	List<BoardDTO> blist();

	BoardDTO getBDTO(String bseq);

    int editok(BoardDTO bdto);
}
