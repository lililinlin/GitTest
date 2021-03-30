package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class QnADto {

	private String Id;
	private String qbName;
	private int qbidx;
	private String qbTitle;
	private String qbContent;
	private Date qbDate;
	private int qHit;
}
