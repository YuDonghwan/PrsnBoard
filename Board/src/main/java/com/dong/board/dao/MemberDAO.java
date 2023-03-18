package com.dong.board.dao;

import com.dong.board.dto.MemberDTO;

public interface MemberDAO {

	int loginOk(MemberDTO mdto);

	MemberDTO getMember(MemberDTO mdto);

    int registerok(MemberDTO mdto);
}
