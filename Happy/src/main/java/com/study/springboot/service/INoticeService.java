package com.study.springboot.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import com.study.springboot.dto.NoticeDto;

public interface INoticeService {
//	public int write(HttpServletRequest req); // 글작성
//	public ArrayList<NoticeDto> list();
	
	 public int write(String nbName,int bidx, String nbTitle, String nbContent, String Id); //글작성
	 public ArrayList<NoticeDto> list(); //글목록
	 public NoticeDto contentView(String bid_str); //글내용
	
}
