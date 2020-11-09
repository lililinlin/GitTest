package com.study.springboot.service;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dto.MemberDto;
@Service
public class MemberService implements IMemberService{
	@Autowired
	IMemberDao memberDao;
	@Autowired
	MemberDto memberDto;
	
	@Override
	public int insertMember(HttpServletRequest req) {
		
		memberDto.setId( req.getParameter("id") );
		memberDto.setPassword( req.getParameter("password") );
		memberDto.setName( req.getParameter("name") );
		
		String year = req.getParameter("birth_year");
		String month = req.getParameter("birth_month");
		String day = req.getParameter("birth_day");
		int yearInt = Integer.parseInt( year );
		int monthInt = Integer.parseInt( month );
		int dayInt = Integer.parseInt( day );
		Date birthDate = new Date(yearInt, monthInt, dayInt);
		memberDto.setBirth( birthDate ); //생일 입력
		
		String add1 = req.getParameter("add1");
		String add2 = req.getParameter("add2");
		String add3 = req.getParameter("add3");
		String add4 = req.getParameter("add4");
		memberDto.setAddress( "("+add1+") "+add2+" "+add3+" "+add4 );
		
		memberDto.setPhone( req.getParameter("phone") );
		memberDto.setReg(new Date()); //현재 시간 입력
		
		int nResult = memberDao.insertMemberDao(memberDto);
		return nResult;
	}

	@Override
	public MemberDto getUserInfo(String id) {
		return memberDao.getUserInfoDao(id);
	}

	@Override
	public int updateMember(HttpServletRequest req) {
		// 세션이 가지고있는 로그인한 ID 정보를 가져온다
		HttpSession session = req.getSession();
		String id = session.getAttribute("sessionID").toString();
		
		// 수정할 정보를 자바빈에 세팅한다.
		
		memberDto.setId(id);
		memberDto.setPassword(req.getParameter("password"));
//		String mail1 = req.getParameter("mail1");
//		String mail2 = req.getParameter("mail2");
		//memberDto.setMail( mail1 + "@" + mail2 );
		memberDto.setPhone(req.getParameter("phone"));
		memberDto.setAddress(req.getParameter("address"));
		
		int nResult = memberDao.updateMemberDao(memberDto);
		return nResult;
	}

	@Override
	public int deleteMember(String id, String pw) {
		
		int nResult = memberDao.deleteMemberDao(id, pw);
		return nResult;
	}

	@Override
	public int loginCheck(String id, String pw) {
		int nResult = memberDao.loginCheckDao(id, pw);
		return nResult;
	}

	@Override
	public ArrayList<MemberDto> userList() {
		ArrayList<MemberDto> list = memberDao.userListDao();
		return list;
	}

	@Override
	public int idCheck(String id) {
		int nResult = memberDao.idCheckDao(id);
		return nResult;
	}

	@Override
	public int logoutDao() {
		return 1; //항상 성공
	}
	
	


}
