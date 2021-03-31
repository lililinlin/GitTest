package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AdoptBoardDto {
	private String id; //아이디
	private String aImage; //이미지
	private String aName; //이름
	private int aIdx; //번호
	private String aTitle; //제목
	private String aContent; //내용
	private Date aDate; //작성날짜
	private int aHit; //조회수
}
