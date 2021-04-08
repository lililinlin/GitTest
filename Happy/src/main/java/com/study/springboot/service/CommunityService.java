package com.study.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.ICommunityDao;
import com.study.springboot.dto.CommunityDto;

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
}
