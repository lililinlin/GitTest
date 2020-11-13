package com.study.springboot.service;

import javax.servlet.http.HttpServletRequest;

public interface INoticeService {
    public int write(HttpServletRequest req); //글작성
   
}
