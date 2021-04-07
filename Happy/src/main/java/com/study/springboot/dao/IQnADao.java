package com.study.springboot.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.QnADto;

@Mapper
public interface IQnADao {

	public int writedao(String Id, String qbName, String qbTitle, String qbContent);
	public ArrayList<QnADto> list();
	public int update(String qbTitle,String qbContent,String qbidx);
	public int updateCount(String qidx);
	public QnADto contentview(String bid_str);
	public int delete(String bid) ;
}
