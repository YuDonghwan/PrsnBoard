package com.dong.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dong.board.dto.BoardDTO;
import com.dong.board.dto.MemberDTO;
import com.dong.board.service.BoardService;

@Controller
public class BoardController {
	
	private BoardService bservice;
	
	@Autowired
	private BoardController(BoardService bservice) {
		this.bservice = bservice;
	}

	@GetMapping("/board/board")
	public String board(HttpServletRequest req) {
		
		List<BoardDTO> blist = bservice.blist();
		
		req.setAttribute("blist", blist);
		
		
		
		return "board/board";
	}
	
	@GetMapping("/board/boardadd")
	public String boardadd(HttpSession session) {
		return "board/boardadd";
	}
	
	
	@PostMapping("/board/boardaddok")
	public String boardaddok(HttpSession session, BoardDTO bdto) {
		
		MemberDTO mdto = (MemberDTO)session.getAttribute("mdto");
		
		bdto.setMseq(mdto.getMseq());
		
		int result = bservice.boardAdd(bdto); 
		
		if(result == 1) 
		return "redirect:/board/board";
		else
		return "board/boardadd";
	}
	
	@GetMapping("/board/boarddetail")
	public String boarddetail(HttpServletRequest req,String bseq) {
		
		
		BoardDTO bdto = bservice.getBDTO(bseq);
		
		req.setAttribute("bdto", bdto);
		
		return "board/boarddetail";
	}
	
	
	
	
	
	
}









