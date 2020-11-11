package com.study.springboot.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.study.springboot.dto.MemberDto;

@Mapper
public interface IMemberDao {

	public Date stringToDateDao(MemberDto member);
	public int insertMemberDao(MemberDto member);
	public MemberDto getUserInfoDao(@Param("id") String id);
	public int updateMemberDao(MemberDto member);
	public int deleteMemberDao(@Param("id") String id, @Param("pw") String pw);
	public int loginCheckDao(@Param("id") String id, @Param("pw") String pw);
	public ArrayList<MemberDto> userListDao();
	public int idCheckDao(@Param("id") String id);
	public String idSearchDao(@Param("name") String name, @Param("phone") String phone);
	public String pwSearchDao(@Param("id") String id, @Param("phone") String phone);
}
