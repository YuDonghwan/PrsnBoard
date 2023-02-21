package com.dong.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dong.board.dao.MemberDAO;
import com.dong.board.dto.MemberDTO;
import com.dong.board.service.MemberService;

@Controller
public class MemberController {

	private MemberService mservice;
	
	@Autowired
	public MemberController(MemberDAO mdao, MemberService mservice) {
		this.mservice = mservice;
	}
	
	@GetMapping("/member/login")
	public String login() {
		
		
		
		return "member/login";
	}
	@GetMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/board/board";
	}
	
	



	@PostMapping("/member/loginok")
	public String loginok(HttpSession session,MemberDTO mdto) {
		
		int result = mservice.loginOk(mdto);
		
		if(result == 1) {
			mdto = mservice.getMember(mdto);
			
			session.setAttribute("mdto", mdto);
			
			return "redirect:/board/board";
		} else {
			return "member/login";
		}
		
		
		
	}
	
	
}
