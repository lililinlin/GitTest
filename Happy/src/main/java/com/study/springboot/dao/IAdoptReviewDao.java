package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.AdoptBoardDto;
import com.study.springboot.dto.AdoptReviewDto;

@Mapper
public interface IAdoptReviewDao {
	public int insertWriteDao(AdoptReviewDto write);
	public ArrayList<AdoptReviewDto> adoptListDao();
	public AdoptReviewDto adoptContentViewDao(int aidx);
	public int adoptReviewDeleteDao(int aidx);
	public int adoptReviewUpdateDao(String title,String content,String aidx);
	public int adoptReviewHitUpDao(int adix);
}
