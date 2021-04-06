package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.AdoptBoardDto;


public interface IAdoptBoardService {
	public int insertAdoptWrite(HttpServletRequest req);
	public ArrayList<AdoptBoardDto> adoptList();
	public AdoptBoardDto adoptContentView(int aidx);
	public int adoptBoardDelete(int aidx);
	public int adoptBoardUpdate(HttpServletRequest req);
}
