package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.CommunityDto;
import com.study.springboot.dto.QnADto;

@Mapper
public interface ICommunityDao {

	public int writedao(String Id,String cbName,String cbTitle,String cbContent);
	public int updateCount(String cbidx);
	public CommunityDto contentview(String cbidx); 
	public int update(String cbTitle,String cbContent,String cbidx);
	public int delete(String cbidx);
	public ArrayList<CommunityDto> list();
}
