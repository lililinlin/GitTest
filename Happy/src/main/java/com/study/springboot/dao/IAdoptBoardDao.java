package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import com.study.springboot.dto.AdoptBoardDto;


@Mapper
public interface IAdoptBoardDao {
	public int insertWriteDao(AdoptBoardDto write);
	public ArrayList<AdoptBoardDto> adoptListDao();
	public AdoptBoardDto adoptContentViewDao(int aidx);
	public int adoptBoardDeleteDao(int aidx);
	public int adoptBoardUpdateDao(String title,String content,String aidx); 
}
 