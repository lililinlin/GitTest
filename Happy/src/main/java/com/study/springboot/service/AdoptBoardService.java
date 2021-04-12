package com.study.springboot.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IAdoptBoardDao;
import com.study.springboot.dto.AdoptBoardDto;

@Service
public class AdoptBoardService implements IAdoptBoardService{

	@Autowired
	IAdoptBoardDao adoptBoardDao;
	@Autowired
	AdoptBoardDto adoptBoardDto;
	
	@Override
	public int insertAdoptWrite(HttpServletRequest req) {
		// TODO Auto-generated method stub
		adoptBoardDto.setId(req.getParameter("id"));
		String img = "<img src=\"images/dog1.jpg\">";  
		adoptBoardDto.setAImage(img);
		adoptBoardDto.setAbName(req.getParameter("name"));
		adoptBoardDto.setAbTitle(req.getParameter("title"));
		adoptBoardDto.setAbContent(req.getParameter("editor4"));
		adoptBoardDto.setAbDate(new Date());
		int hitCount = 0;
		adoptBoardDto.setAHit(hitCount);
		
		int nResult = adoptBoardDao.insertWriteDao(adoptBoardDto);
		return nResult;
	}

	@Override
	public ArrayList<AdoptBoardDto> adoptList() {
		// TODO Auto-generated method stub
		ArrayList<AdoptBoardDto> list = adoptBoardDao.adoptListDao();
		return list;
	}

	@Override
	public AdoptBoardDto adoptContentView(int aidx) {
		// TODO Auto-generated method stub
		return adoptBoardDao.adoptContentViewDao(aidx);
	}

	@Override
	public int adoptBoardDelete(int aidx) {
		// TODO Auto-generated method stub
		return adoptBoardDao.adoptBoardDeleteDao(aidx);
	}


	public int adoptBoardUpdate(String title, String content, String aidx) {
		// TODO Auto-generated method stub
		int nResult = adoptBoardDao.adoptBoardUpdateDao(title,content,aidx);
		return nResult;
	}

	@Override
	public int adoptBoardHitUp(int aidx) {
		return adoptBoardDao.adoptBoardHitUpDao(aidx);
	}

}
