package com.study.springboot.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.study.springboot.dao.IAdoptBoardDao;
import com.study.springboot.dto.AdoptBoardDto;

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
	public String adoptContentView(int aidx) {
		// TODO Auto-generated method stub
		return adoptBoardDao.adoptContentViewDao(aidx);
	}

	@Override
	public int adoptBoardDelete(String id) {
		// TODO Auto-generated method stub
		return adoptBoardDao.adoptBoardDeleteDao(id);
	}

}
