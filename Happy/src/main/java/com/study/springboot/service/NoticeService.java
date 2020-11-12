package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dto.NoticeDto;

@Service
public class NoticeService implements INoticeService {

	@Autowired
	INoticeDao boardDao;
	@Autowired
	NoticeDto boardDto;
	
	@Override
	public int write(String bname, String btitle, String bcontent) {
		int nResult = boardDao.write(bname, btitle, bcontent);
		return nResult;
	}
	@Override
	public ArrayList<NoticeDto> list() {
		ArrayList<NoticeDto> list = boardDao.list();
		return list;
	}
	@Override
	public NoticeDto contentView(String bid_str) {
		boardDao.upHit(bid_str);
		
		return boardDao.contentView(bid_str);
	}
	@Override
	public int modify(String bid, String bname, String btitle, String bcontent) {
		
		return boardDao.modify(bid, bname, btitle, bcontent);
	}
	@Override
	public int delete(String bid) {
		return boardDao.delete(bid);
	}
	@Override
	public NoticeDto reply_view(String str_bid) {
		NoticeDto dto = boardDao.reply_view(str_bid);
		return dto;
	}
	@Override
	public int reply(String bid, String bname, String btitle, String bcontent, String bgroup, String bstep,
			String bindent) {
				
		// 계속 답글을 달려고 할 때 step 과 indent가 더해지면 안되니 조건을 거는 함수필요
		replyShape(bgroup, bstep);
		
		int nResult = boardDao.reply(bid, 
									bname, 
									btitle, 
									bcontent, 
									Integer.parseInt(bgroup), 
									Integer.parseInt(bstep) + 1, 
									Integer.parseInt(bindent) + 1);
		return nResult;
	}
	@Override
	public int replyShape(String bgroup, String bstep) {
		int nResult = boardDao.replyShape(Integer.parseInt(bgroup), Integer.parseInt(bstep));
		return nResult;
	}
	@Override
	public int upHit(String bid) {
		int nResult = boardDao.upHit(bid);
		return nResult;
	}
	
}
