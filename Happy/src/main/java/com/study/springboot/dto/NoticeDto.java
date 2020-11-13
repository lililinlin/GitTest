package com.study.springboot.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component  //개발자가 작성한 클래스를 빈으로 만들때, @Bean은 수정불가한 클래스를 빈으로 만들때
@Data
public class NoticeDto 
{

    private String title;
    private String content;

	
	//기본생성자함수
//	public BoardDto() {
//		
//	}
	//Getter/Setter함수
	
}
