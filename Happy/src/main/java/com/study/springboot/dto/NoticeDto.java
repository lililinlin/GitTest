package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component  //개발자가 작성한 클래스를 빈으로 만들때, @Bean은 수정불가한 클래스를 빈으로 만들때
@Data
public class NoticeDto 
{
	private String Id;
	private String nbName;
	private int bidx;
    private String nbTitle;
    private String nbContent;
    private Date nbDate;
    private int nbHit;
    private int nbGrooup;
    private int nbStep;
    private int nbIndent;
    

	
	//기본생성자함수
//	public BoardDto() {
//		
//	}
	//Getter/Setter함수
	
}
