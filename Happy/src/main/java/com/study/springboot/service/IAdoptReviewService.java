package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.AdoptBoardDto;
import com.study.springboot.dto.AdoptReviewDto;

public interface IAdoptReviewService {
	public int insertAdoptWrite(HttpServletRequest req);
	public ArrayList<AdoptReviewDto> adoptList();
	public AdoptReviewDto adoptContentView(int aidx);
	public int adoptReviewDelete(int aidx);
	public int adoptReviewUpdate(String title, String content, String aidx);
	public int adoptReviewHitUp(int aidx);
}
