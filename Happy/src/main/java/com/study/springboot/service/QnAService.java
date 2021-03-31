package com.study.springboot.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IQnADao;
import com.study.springboot.dto.QnADto;

@Service
public class QnAService implements IQnAService{

	@Autowired
	IQnADao qnadao;
	@Autowired
	QnADto qnadto;
	
	@Override
	public int write(String Id, String qbName, String qbTitle, String qbContent) {
		int nResult = qnadao.writedao(Id,qbName,qbTitle,qbContent);
		return nResult;
	}

	@Override
	public ArrayList<QnADto> list(){
		ArrayList<QnADto> list = qnadao.list();
		return list;
	}
}
