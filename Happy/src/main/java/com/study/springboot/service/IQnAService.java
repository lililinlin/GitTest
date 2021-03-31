package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.QnADto;

public interface IQnAService {

	public int write(String Id, String qbName, String qbTitle, String qbContent);
	public int update(HttpServletRequest req);
	public ArrayList<QnADto> list();
	public QnADto contentview(String bid_str);
	public int delete(String bid);
}
