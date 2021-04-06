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
		adoptBoardDto.setAName(req.getParameter("name"));
		adoptBoardDto.setATitle(req.getParameter("title"));
		adoptBoardDto.setAContent(req.getParameter("editor4"));
		adoptBoardDto.setADate(new Date());
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

	@Override
	public int adoptBoardUpdate(HttpServletRequest req) {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		//세션 속성명이 sessionID인 속성의 값을 오브젝트타입으로 가져온다
		String id = session.getAttribute("sessionID").toString();
		
		adoptBoardDto.setId(id);
		
		adoptBoardDto.setATitle(req.getParameter("titie"));
		adoptBoardDto.setAContent(req.getParameter("editor4"));
		
		int nResult = adoptBoardDao.adoptBoardUpdateDao(adoptBoardDto);
		return nResult;
	}

}
