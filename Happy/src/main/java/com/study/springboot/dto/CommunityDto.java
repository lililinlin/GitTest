package com.study.springboot.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class CommunityDto {
	    private String Id;     
	    private String cbName;
	    private int cbidx;     
	    private String cbTitle;
	    private String cbContent; 
	    private Date cbDate; 
	    private int cHit;
}
