package com.dong.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dong.board.dao.MemberDAO;
import com.dong.board.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	private MemberDAO mdao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO mdao) {
		this.mdao = mdao;
	}



	@Override
	public int loginOk(MemberDTO mdto) {
		return mdao.loginOk(mdto);
	}
	
	@Override
	public MemberDTO getMember(MemberDTO mdto) {
		return mdao.getMember(mdto);
	}
	
}
