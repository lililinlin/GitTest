package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IQnADao {

	public int writedao(String Id, String qbName, String qbTitle, String qbContent);

}
