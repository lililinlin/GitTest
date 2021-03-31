package com.study.springboot.service;

import java.util.ArrayList;

import com.study.springboot.dto.QnADto;

public interface IQnAService {

	public int write(String Id, String qbName, String qbTitle, String qbContent);
	public ArrayList<QnADto> list();
}
