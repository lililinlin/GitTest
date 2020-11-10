package com.study.springboot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.springboot.dto.MemberDto;
import com.study.springboot.service.IMemberService;

@Controller
public class MyController {
	@Autowired
	IMemberService member_service;
	
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
	@RequestMapping(value="/MemberJoinAction", method=RequestMethod.POST, produces = "text/html; charset=UTF-8")
	public String MemberJoinAction(HttpServletRequest req, Model model) throws Exception {
		
		//req.setCharacterEncoding("utf-8"); // 인코딩
		req.setCharacterEncoding("UTF-8");
		
		int nResult = member_service.insertMember( req );
		if( nResult <= 0 ) {
			System.out.println("회원가입 실패");
			
	        model.addAttribute("msg","회원가입 실패");
	        model.addAttribute("url","/");
		}else {
			System.out.println("회원가입 성공");
			
			model.addAttribute("msg","회원가입 성공");
            model.addAttribute("url","/");
		}
		
        
		return "redirect"; //redirect.jsp
	}
	@RequestMapping("/login")
	public String login(Model model) {
		
		return "login"; 
	}
	@RequestMapping(value="/IdCheckAction", method=RequestMethod.GET)
	public @ResponseBody String IdCheckAction(HttpServletRequest req, Model model) {
		
		System.out.println( "userID:" + req.getParameter("id"));
		
		
		int nResult = member_service.idCheck( req.getParameter("id") );
		if( nResult > 0 ) {
			System.out.println("중복된 아이디 있음");
			
		}else {
			System.out.println("중복된 아이디 없음");
			
		}
		
		return String.valueOf( nResult );
	}
	@RequestMapping("/MemberLoginAction")
	public String MemberLoginAction(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		String pw = req.getParameter("password");
		
		int nResult = member_service.loginCheck(id, pw);
		if( nResult <= 0 ) {
			System.out.println("로그인 실패");
			
	        model.addAttribute("msg","로그인 실패 - 아이디나 암호를 확인해주세요");
	        model.addAttribute("url","/LoginForm");
		}else {
			System.out.println("로그인 성공");
			
			//로그인 성공 -> 세션에 아이디를 저장
			HttpSession session = req.getSession();
	   		session.setAttribute("sessionID", id);
			
			model.addAttribute("msg","로그인 성공");
            model.addAttribute("url","/");
		}
		
        
		return "redirect"; //redirect.jsp
	}
	
	@RequestMapping("/MemberLogoutAction")
	public String MemberLogoutAction(HttpServletRequest req, Model model) {
		int nResult = member_service.logoutDao();
		if( nResult <= 0 ) {
			System.out.println("로그아웃 실패");
			
	        model.addAttribute("msg","로그아웃 실패");
	        model.addAttribute("url","/");
		}else {
			System.out.println("로그아웃 성공");
			
			// 로그아웃시 세션정보를 모두 삭제한다.
			req.getSession().invalidate();
			
			model.addAttribute("msg","로그아웃 성공");
            model.addAttribute("url","/");
		}
		
		return "redirect"; //redirect.jsp
	}
	
	@RequestMapping("/findid")
	public String findid(Model model) {
		
		return "findid"; 
	}
	@RequestMapping("/findpw")
	public String findpw(Model model) {
		
		return "findpw"; 
	}
	@RequestMapping("/modify")
	public String modify(Model model) {
		
		return "modify"; 
	}

	@RequestMapping("/Mypage")
	public String MemberInfoAction(HttpServletRequest req, RedirectAttributes redirect) {
		String id = req.getSession().getAttribute("sessionID").toString();
		
		MemberDto dto = member_service.getUserInfo(id);
		
		req.getSession().setAttribute("memberInfo", dto);
		redirect.addAttribute("Mypage.jsp");        
		return "Mypage";
	}
	
// footer 
	@RequestMapping("/footer_yak")
	public String footer_yak(Model model) {
		
		return "footer_yak"; 
	}
	@RequestMapping("/footer_info")
	public String footer_info(Model model) {
		
		return "footer_info"; 
	}
	@RequestMapping("/footer_email")
	public String footer_email(Model model) {
		
		return "footer_email"; 
	}
	@RequestMapping("/join_agree")
	public String join_agree(Model model) {
		
		return "join_agree"; 
	}
}
