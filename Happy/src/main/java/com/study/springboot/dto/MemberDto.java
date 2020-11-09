package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component 
@Data
public class MemberDto {
	private String id;			// 아이디
	private String password; 	// 비밀번호
	private String name;		// 이름
	private Date birth;		    // 생일
	private String phone;		// 전화
	private String address;		// 주소
	private Date reg;		    // 가입일
	
}
