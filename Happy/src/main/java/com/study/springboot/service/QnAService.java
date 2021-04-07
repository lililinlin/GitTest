package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@Override
	public int update(String qbTitle,String qbContent,String qbidx) {
		int nResult = qnadao.update(qbTitle,qbContent,qbidx);
		return nResult;
	}
	
	@Override
	public QnADto contentview(String bid_str) {
		
		return qnadao.contentview(bid_str);
	}
	@Override
	public int updateCount(String qidx) {
		return qnadao.updateCount(qidx);
	}
	
	@Override
	public int delete(String bid) {
		return qnadao.delete(bid);
	}
	
}
