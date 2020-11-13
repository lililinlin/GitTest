package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

//MyBatis와 객체를 연결하는 어노테이션.
@Mapper
public interface INoticeDao 
{
	public int writeDao(NoticeDto notice); //글작성
    public ArrayList<NoticeDto> list(); //글목록
    public NoticeDto contentView(String bid_str); //글내용
    public int modify(String bid, String bname, String btitle, String bcontent); //글수정
    public int delete(String bid); //글삭제
    public NoticeDto reply_view(String str_bid); //댓글보기 
    public int reply(String bid, String bname, String btitle, String bcontent, int bgroup, int bstep, int bindent); //댓글작성
    public int replyShape(int bgroup, int bstep);//댓글공유
    public int upHit(String bid); //조회수 올리기
}

