package com.study.springboot.service;

import java.util.ArrayList;

import com.study.springboot.dto.CommunityDto;

public interface ICommunityService {

	public int write(String Id,String cbName,String cbTitle,String cbContent);
	public CommunityDto contentview(String cbidx);
	public int updateCount(String cbidx);
	public int delete(String cbidx);
	public int update(String cbTitle,String cbContent,String cbidx);
	public ArrayList<CommunityDto> list();
}
