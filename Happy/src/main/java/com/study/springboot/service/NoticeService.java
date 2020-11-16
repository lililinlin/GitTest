package com.study.springboot.service;

import java.util.List;


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
	public int write(String nbName,int bidx, String nbTitle, String nbContent, String Id) {
		int nResult = noticeDao.writeDao(nbName,bidx,nbTitle, nbContent, Id);
		return nResult;
	}


	@Override
	public List<NoticeDto> list(String page) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public NoticeDto contentView(String bid_str) {
		// TODO Auto-generated method stub
		return null;
	}

}
