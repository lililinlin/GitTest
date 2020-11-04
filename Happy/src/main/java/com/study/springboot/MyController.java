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
	@RequestMapping("/nav1-1_site")
	public String navsitePage(Model model) {
		
		return "nav1-1_site"; //list.jsp 호출하면서 "list"객체를 넘겨줌.
	}
	@RequestMapping("/nav1-2_map")
	public String navmapPage(Model model) {
		
		return "nav1-2_map"; //list.jsp 호출하면서 "list"객체를 넘겨줌.
	}
	@RequestMapping("/join")
	public String joinPage(Model model) {
		
		return "join"; //list.jsp 호출하면서 "list"객체를 넘겨줌.
	}
}
