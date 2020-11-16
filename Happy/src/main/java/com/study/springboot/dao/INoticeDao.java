package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

//MyBatis와 객체를 연결하는 어노테이션.
@Mapper
public interface INoticeDao 
{
	public int writeDao(String nbName,int bidx,String nbTitle, String nbContent, String id); //글작성
    public ArrayList<NoticeDto> list(); //글목록
    public NoticeDto contentView(String bid_str); //글내용
    
}

