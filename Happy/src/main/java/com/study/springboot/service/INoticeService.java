package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.NoticeDto;

public interface INoticeService {
	public int write(HttpServletRequest req); // 글작성
	 public ArrayList<NoticeDto> list();
}
