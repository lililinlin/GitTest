package com.study.springboot.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.QnADto;

@Mapper
public interface IQnADao {

	public int writedao(String Id, String qbName, String qbTitle, String qbContent);
	public ArrayList<QnADto> list();
	public int update(QnADto qna);
	public QnADto contentview(String bid_str);
	public int delete(String bid) ;
}
