package com.dong.board.dto;

import lombok.Data;

@Data
public class MemberDTO {
	private String mseq;
	private String id;
	private String pw;
	private String email;
	private String name;
	private String active;
}
