package com.study.springboot.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.ICommunityDao;
import com.study.springboot.dto.CommunityDto;
import com.study.springboot.dto.QnADto;

@Service
public class CommunityService implements ICommunityService{

	@Autowired
	ICommunityDao comdao;
	@Autowired
	CommunityDto comdto;
	
	@Override
	public int write(String Id,String cbName,String cbTitle,String cbContent) {
		int nResult = comdao.writedao(Id,cbName,cbTitle,cbContent);
		return nResult;
	}
	@Override
	public CommunityDto contentview(String cbidx){
		return comdao.contentview(cbidx);
	}
	@Override
	public int updateCount(String cbidx) {
		return comdao.updateCount(cbidx);
	}
	
	@Override
	public int delete(String cbidx) {
		return comdao.delete(cbidx);
	}
	
	@Override
	public int update(String cbTitle,String cbContent,String cbidx) {
		int nResult = comdao.update(cbTitle,cbContent,cbidx);
		return nResult;
	}
	
	@Override
	public ArrayList<CommunityDto> list(){
		ArrayList<CommunityDto> list = comdao.list();
		return list;
	}
}
