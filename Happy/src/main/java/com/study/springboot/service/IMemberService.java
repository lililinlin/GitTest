package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.MemberDto;

public interface IMemberService {
	public int insertMember(HttpServletRequest req);
	public MemberDto getUserInfo(String id);
	public int updateMember(HttpServletRequest req);
	public int deleteMember(String id, String pw);
	public int loginCheck(String id, String pw);
	public ArrayList<MemberDto> userList();
	public int idCheck(String id);
	public int logoutDao();
	public String idSearch(String name, String phone);
	public String pwSearch(String id, String phone);
}
