package com.dong.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dong.board.dao.BoardDAO;
import com.dong.board.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	private BoardDAO bdao;
	
	@Autowired
	private BoardServiceImpl(BoardDAO bdao) {
		this.bdao = bdao;
	}
	
	
	@Override
	public int boardAdd(BoardDTO bdto) {
		return bdao.boardAdd(bdto);
	}
	

	@Override
	public List<BoardDTO> blist() {
		return bdao.blist();
	}
	
	@Override
	public BoardDTO getBDTO(String bseq) {
		return bdao.getBDTO(bseq);
	}
}













