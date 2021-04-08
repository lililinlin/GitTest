package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ICommunityDao {

	public int writedao(String Id,String cbName,String cbTitle,String cbContent);
	
}
