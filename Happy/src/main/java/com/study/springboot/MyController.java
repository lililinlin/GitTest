package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/")
	public String root() throws Exception {
		//return "트랜잭션 없음(예제1)";
		return "Home";
	}
	@RequestMapping("/Home")
	public String home() throws Exception {
		//return "트랜잭션 없음(예제1)";
		return "Home";
	}
	@RequestMapping("/nav1-1_site")
	public String navsitePage(Model model) {
		
		return "nav1-1_site"; //list.jsp 호출하면서 "list"객체를 넘겨줌.
	}
	@RequestMapping("/nav1-2_map")
	public String navmapPage(Model model) {
		
		return "nav1-2_map"; 
	}
	@RequestMapping("/nav2-1_adopt")
	public String navadoptPage(Model model) {
		
		return "nav2-1_adopt"; 
	}
	@RequestMapping("/nav2-2_adopted")
	public String navadoptedPage(Model model) {
		
		return "nav2-2_adopted"; 
	}
	@RequestMapping("/nav2-3_review")
	public String navreview(Model model) {
		
		return "nav2-3_review"; 
	}
	@RequestMapping("/nav3-1_board")
	public String navboardPage(Model model) {
		
		return "nav3-1_board"; 
	}
	@RequestMapping("/nav3-2_volunteer")
	public String navvolunteerPage(Model model) {
		
		return "nav3-2_volunteer"; 
	}
	@RequestMapping("/nav4-1_QnA")
	public String navQnAPage(Model model) {
		
		return "nav4-1_QnA"; 
	}
	@RequestMapping("/nav4-2_notice")
	public String navnoticePage(Model model) {
		
		return "nav4-2_notice"; 
	}
	@RequestMapping("/join")
	public String joinPage(Model model) {
		
		return "join"; 
	}
	@RequestMapping("/login")
	public String login(Model model) {
		
		return "login"; 
	}
	
	@RequestMapping("/findid")
	public String findid(Model model) {
		
		return "findid"; 
	}
	@RequestMapping("/findpw")
	public String findpw(Model model) {
		
		return "findpw"; 
	}
}
