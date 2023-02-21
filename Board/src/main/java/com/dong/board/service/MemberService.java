package com.dong.board.service;

import com.dong.board.dto.MemberDTO;

public interface MemberService {
	
	int loginOk(MemberDTO mdto);

	MemberDTO getMember(MemberDTO mdto);

}
