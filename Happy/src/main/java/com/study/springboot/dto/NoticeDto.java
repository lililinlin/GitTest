package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component  //개발자가 작성한 클래스를 빈으로 만들때, @Bean은 수정불가한 클래스를 빈으로 만들때
@Data
public class NoticeDto 
{
	private int bid;
    private String bname;
    private String btitle;
    private String bcontent;
    private Date bdate;
    private int bhit;
    private int bgroup;
    private int bstep;
    private int bindent;
	
	//기본생성자함수
//	public BoardDto() {
//		
//	}
	//Getter/Setter함수
	
}
