package com.study.springboot.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import com.study.springboot.dto.NoticeDto;

public interface INoticeService {
//	public int write(HttpServletRequest req); // 글작성
//	public ArrayList<NoticeDto> list();
	
	 public int write(String bname, String btitle, String bcontent); //글작성
	 public List<NoticeDto> list(String page); //글목록
	 public NoticeDto contentView(String bid_str); //글내용
	 public int modify(String bid, String bname, String btitle, String bcontent); //글수정
	 public int delete(String bid); //글삭제
	 public NoticeDto reply_view(String str_bid); //댓글보기 
	 public int reply(String bid, String bname, String btitle, String bcontent, String bgroup, String bstep, String bindent); //댓글작성
	 public int replyShape(String bgroup, String bstep);//댓글공유
	 public int upHit( String bid); //조회수 올리기
}
