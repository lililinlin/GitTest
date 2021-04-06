package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.AdoptBoardDto;
import com.study.springboot.dto.MemberDto;

public interface IAdoptBoardService {
	public int insertAdoptWrite(HttpServletRequest req);
	public ArrayList<AdoptBoardDto> adoptList();
	public String adoptContentView(int aidx);
	public int adoptBoardDelete(int aidx);
	public AdoptBoardDto adoptBoardInfo(int aidx);
}
