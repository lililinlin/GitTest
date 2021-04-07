package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AdoptBoardDto {
	private String Id; //아이디
	private String aImage; //이미지
	private String abName; //이름
	private int abIdx; //번호
	private String abTitle; //제목
	private String abContent; //내용
	private Date abDate; //작성날짜
	private int aHit; //조회수
}
