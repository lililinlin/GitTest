package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AdoptReviewDto {
	private String Id; //아이디
	private String rImage; //이미지
	private String rName; //이름
	private int rIdx; //번호
	private String rTitle; //제목
	private String rContent; //내용
	private Date rDate; //작성날짜
	private int rHit; //조회수
}
