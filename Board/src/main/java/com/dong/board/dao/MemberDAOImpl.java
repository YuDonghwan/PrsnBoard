package com.dong.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dong.board.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	@Override
	public int loginOk(MemberDTO mdto) {
		return template.selectOne("member.loginok",mdto);
	}
	
	@Override
	public MemberDTO getMember(MemberDTO mdto) {
		return template.selectOne("member.getmember",mdto);
	}

	@Override
	public int registerok(MemberDTO mdto) {
		return template.insert("member.registerok",mdto);
	}
}
