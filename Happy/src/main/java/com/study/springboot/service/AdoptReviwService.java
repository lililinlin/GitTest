package com.study.springboot.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IAdoptReviewDao;
import com.study.springboot.dto.AdoptBoardDto;
import com.study.springboot.dto.AdoptReviewDto;

@Service
public class AdoptReviwService implements IAdoptReviewService{
	@Autowired
	IAdoptReviewDao adoptReviewDao;
	@Autowired
	AdoptReviewDto adoptReviewDto;
		
	@Override
	public int insertAdoptWrite(HttpServletRequest req) {
		adoptReviewDto.setId(req.getParameter("id"));
		String img = "<img src=\"images/dog1.jpg\">";  
		adoptReviewDto.setRImage(img);
		adoptReviewDto.setRName(req.getParameter("name"));
		adoptReviewDto.setRTitle(req.getParameter("title"));
		adoptReviewDto.setRContent(req.getParameter("editor4"));
		adoptReviewDto.setRDate(new Date());
		int hitCount = 0;
		adoptReviewDto.setRHit(hitCount);
		
		int nResult = adoptReviewDao.insertWriteDao(adoptReviewDto);
		return nResult;
	}

	@Override
	public ArrayList<AdoptReviewDto> adoptList() {
		// TODO Auto-generated method stub
		ArrayList<AdoptReviewDto> list = adoptReviewDao.adoptListDao();
		return list;
	}

	@Override
	public AdoptReviewDto adoptContentView(int aidx) {
		// TODO Auto-generated method stub
		return adoptReviewDao.adoptContentViewDao(aidx);
	}

	@Override
	public int adoptReviewDelete(int aidx) {
		// TODO Auto-generated method stub
		return adoptReviewDao.adoptReviewDeleteDao(aidx);
	}

	@Override
	public int adoptReviewUpdate(String title, String content, String aidx) {
		// TODO Auto-generated method stub
		int nResult = adoptReviewDao.adoptReviewUpdateDao(title,content,aidx);
		return nResult;
	}

	@Override
	public int adoptReviewHitUp(int aidx) {
		// TODO Auto-generated method stub
		return adoptReviewDao.adoptReviewHitUpDao(aidx);
	}

}
