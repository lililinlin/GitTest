package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dto.NoticeDto;

@Service
public class NoticeService implements INoticeService {

	@Autowired
	INoticeDao noticeDao;
	@Autowired
	NoticeDto noticeDto;

	@Override
	public int write(HttpServletRequest req) {
		noticeDto.setTitle(req.getParameter("title"));
		noticeDto.setContent(req.getParameter("editor4"));
		int nResult = noticeDao.writeDao(noticeDto);
		return nResult;
	}

	

	@Override
	public ArrayList<NoticeDto> list() {
		ArrayList<NoticeDto> list = noticeDao.list();
		return list;
	}

}
