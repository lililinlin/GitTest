package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.study.springboot.dto.AdoptBoardDto;

@Mapper
public interface IAdoptBoardDao {
	public int insertWriteDao(AdoptBoardDto write);
	public ArrayList<AdoptBoardDto> adoptListDao();
	public String adoptContentViewDao(@Param("aidx") int aidx);
	public int adoptBoardDeleteDao(@Param("aidx") int aidx);
}
