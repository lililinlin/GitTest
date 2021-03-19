package com.study.springboot;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.springboot.dto.MemberDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.service.IMemberService;
import com.study.springboot.service.INoticeService;

@Controller
public class MyController {
   @Autowired
   IMemberService member_service;
   @Autowired
   INoticeService notice_service;

   @RequestMapping("/")
   public String root() throws Exception {
      // return "트랜잭션 없음(예제1)";
      return "Home";
   }

   @RequestMapping("/Home")
   public String home() throws Exception {
      // return "트랜잭션 없음(예제1)";
      return "Home";
   }

   @RequestMapping("/nav1-1_site")
   public String navsitePage(Model model) {

      return "nav/nav1-1_site"; // list.jsp 호출하면서 "list"객체를 넘겨줌.
   }

   @RequestMapping("/nav1-2_map")
   public String navmapPage(Model model) {

      return "nav/nav1-2_map";
   }

   @RequestMapping("/nav2-1_adopt")
   public String navadoptPage(Model model) {

      return "nav/nav2-1_adopt";
   }

   @RequestMapping("/nav2-2_adopted")
   public String navadoptedPage(Model model) {

      return "nav/nav2-2_adopted";
   }

   @RequestMapping("/nav2-3_review")
   public String navreview(Model model) {

      return "nav/nav2-3_review";
   }

   @RequestMapping("/nav3-1_board")
   public String navboardPage(Model model) {

      return "nav/nav3-1_board";
   }

   @RequestMapping("/nav3-2_volunteer")
   public String navvolunteerPage(Model model) {

      return "nav/nav3-2_volunteer";
   }

   @RequestMapping("/nav4-1_QnA")
   public String navQnAPage(Model model) {

      return "nav/nav4-1_QnA";
   }
   

   @RequestMapping("/nav4-2_notice")
   public String navnoticePage(HttpServletRequest req) {
      ArrayList<NoticeDto> list = notice_service.list();
      req.getSession().setAttribute("listBoard", list);
      return "nav/nav4-2_notice";
   }
   
   @RequestMapping("/content_view")
   public String content_view(HttpServletRequest req) {
	  System.out.println("bidx ?? "+req.getParameter("bidx"));
      String bid_str = req.getParameter("bidx");
      NoticeDto dto = notice_service.contentView(bid_str);
      System.out.println("xml ??"+dto);
      req.getSession().setAttribute("content_view", dto);
      return "board/content_view";
   }
   
   @RequestMapping("/delete")
   public String delete(HttpServletRequest req,Model model) {

      String bid = req.getParameter("bidx");
            
      int nResult = notice_service.delete(bid);
      
      if( nResult <= 0 ) {
         System.out.println("글삭제 실패");
         model.addAttribute("msg","글삭제 실패");
         model.addAttribute("url","/");
      }else {
         System.out.println("글삭제 성공");

         model.addAttribute("msg","글삭제 성공");
         model.addAttribute("url","/nav4-2_notice");
      }

      return "redirect";
   }

   @RequestMapping("/join")
   public String joinPage(Model model) {

      return "member/join";
   }

   @RequestMapping(value = "/MemberJoinAction", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
   public String MemberJoinAction(HttpServletRequest req, Model model) throws Exception {

      // req.setCharacterEncoding("utf-8"); // 인코딩
      req.setCharacterEncoding("UTF-8");

      int nResult = member_service.insertMember(req);
      if (nResult <= 0) {
         System.out.println("회원가입 실패");

         model.addAttribute("msg", "회원가입 실패");
         model.addAttribute("url", "/");
      } else {
         System.out.println("회원가입 성공");

         model.addAttribute("msg", "회원가입 성공");
         model.addAttribute("url", "/");
      }

      return "redirect"; // redirect.jsp
   }

   @RequestMapping("/login")
   public String login(Model model) {

      return "member/login";
   }

   @RequestMapping(value = "/IdCheckAction", method = RequestMethod.GET)
   public @ResponseBody String IdCheckAction(HttpServletRequest req, Model model) {

      System.out.println("userID:" + req.getParameter("id"));

      int nResult = member_service.idCheck(req.getParameter("id"));
      if (nResult > 0) {
         System.out.println("중복된 아이디 있음");

      } else {
         System.out.println("중복된 아이디 없음");

      }
      return String.valueOf(nResult);
   }

   @RequestMapping("/MemberLoginAction")
   public String MemberLoginAction(HttpServletRequest req, Model model) {
      String id = req.getParameter("id");
      String pw = req.getParameter("password");

      int nResult = member_service.loginCheck(id, pw);
      if (nResult <= 0) {
         System.out.println("로그인 실패");

         model.addAttribute("msg", "로그인 실패 - 아이디나 암호를 확인해주세요");
         model.addAttribute("url", "login");
      } else {
         System.out.println("로그인 성공");

         // 로그인 성공 -> 세션에 아이디를 저장
         HttpSession session = req.getSession();
         session.setAttribute("sessionID", id);

         model.addAttribute("msg", "로그인 성공");
         model.addAttribute("url", "/");
      }

      return "redirect"; // redirect.jsp
   }

   @RequestMapping("/MemberLogoutAction")
   public String MemberLogoutAction(HttpServletRequest req, Model model) {
      int nResult = member_service.logoutDao();
      if (nResult <= 0) {
         System.out.println("로그아웃 실패");

         model.addAttribute("msg", "로그아웃 실패");
         model.addAttribute("url", "/");
      } else {
         System.out.println("로그아웃 성공");

         // 로그아웃시 세션정보를 모두 삭제한다.
         req.getSession().invalidate();

         model.addAttribute("msg", "로그아웃 성공");
         model.addAttribute("url", "/");
      }

      return "redirect"; // redirect.jsp
   }

   @RequestMapping("/findid")
   public String findid(Model model) {

      return "member/findid";
   }

   @RequestMapping("/findpw")
   public String findpw(Model model) {

      return "member/findpw";
   }

   @RequestMapping("/modify")
   public String modify(HttpServletRequest req, RedirectAttributes redirect) {
      String id = req.getSession().getAttribute("sessionID").toString();

      MemberDto dto = member_service.getUserInfo(id);

      req.getSession().setAttribute("memberInfo", dto);
      redirect.addAttribute("modify.jsp");
      return "member/modify";
   }
   @RequestMapping("/my_Write")
   public String my_Write(Model model) {

      return "member/my_Write";
   }
   @RequestMapping("/my_Write_View")
   public String my_Write_View(Model model) {

      return "member/my_Write_View";
   }
   @RequestMapping("/my_Write_Edit")
   public String my_Write_Edit(Model model) {

      return "member/my_Write_Edit";
   }
   
   @RequestMapping("/Q_A_Write")
   public String Q_A_Write(Model model) {
	   
	   return "board/Q_A_Write";
   }
   
   @RequestMapping("/Q_A_content_view")
   public String Q_A_content_view(Model model) {
	   
	   return "board/Q_A_content_view";
   }
   @RequestMapping(value = "/MemberModifyAction", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
   public String MemberModifyFormAction(HttpServletRequest req, Model model) throws Exception {
      req.setCharacterEncoding("utf-8"); // 인코딩

      int nResult = member_service.updateMember(req);
      System.out.println(nResult);
      if (nResult <= 0) {

         System.out.println("회원수정 실패");
         //
         model.addAttribute("msg", "회원수정 실패");
         model.addAttribute("url", "/Modify");
      } else {
         System.out.println("회원수정 성공");

         model.addAttribute("msg", "회원수정 성공");
         model.addAttribute("url", "/Mypage");
      }

      return "redirect";
   }

   @RequestMapping(value = "/idSearchAction", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
   public String idSearchAction(HttpServletRequest req, Model model) throws Exception {
      req.setCharacterEncoding("utf-8"); // 인코딩
      String name = req.getParameter("name");
      String phone = req.getParameter("phone");

      String search = member_service.idSearch(name, phone);

      System.out.println(search);
      if (search != null) {

         System.out.println("회원아이디 찾기 성공");
         //
         model.addAttribute("msg", search);
         model.addAttribute("url", "login");
      } else {
         System.out.println("회원아이디 찾기 실패");
         //
         model.addAttribute("msg", "정보 다름");
         model.addAttribute("url", "findid");
      }

      return "redirect";
   }

   @RequestMapping("/Mypage")
   public String MemberInfoAction(HttpServletRequest req, RedirectAttributes redirect) {
      String id = req.getSession().getAttribute("sessionID").toString();

      MemberDto dto = member_service.getUserInfo(id);

      req.getSession().setAttribute("memberInfo", dto);
      redirect.addAttribute("Mypage.jsp");
      return "member/Mypage";
   }
   
   @RequestMapping("/write")
   public String write(HttpServletRequest req, RedirectAttributes redirect, Model model) {
      HttpSession session = req.getSession();
      String id = session.getAttribute("sessionID").toString();
      MemberDto dto = member_service.getUserInfo(id);
      session.setAttribute("memberInfo", dto);
      System.out.println(id);
      return "board/write"; // list.jsp
   }

   @RequestMapping(value = "/images/imageUpload.do", method = RequestMethod.POST)
   public void imageUpload(HttpServletRequest request, HttpServletResponse response,
         MultipartHttpServletRequest multiFile, @RequestParam MultipartFile upload) throws Exception {
      // 랜덤 문자 생성
      UUID uid = UUID.randomUUID();

      OutputStream out = null;
      PrintWriter printWriter = null;

      // 인코딩
      response.setCharacterEncoding("utf-8");
      response.setContentType("text/html;charset=utf-8");

      try {

         // 파일 이름 가져오기
         String fileName = upload.getOriginalFilename();
         byte[] bytes = upload.getBytes();

         // 이미지 경로 생성
         String path = "C:/Users/01072/git/Happy/Happy/src/main/resources/static/images" + "ckImage/";// fileDir는 전역
                                                                                 // 변수라 그냥
                                                                                 // 이미지 경로
                                                                                 // 설정해주면 된다.
         String ckUploadPath = path + uid + "_" + fileName;
         File folder = new File(path);

         // 해당 디렉토리 확인
         if (!folder.exists()) {
            try {
               folder.mkdirs(); // 폴더 생성
            } catch (Exception e) {
               e.getStackTrace();
            }
         }

         out = new FileOutputStream(new File(ckUploadPath));
         out.write(bytes);
         out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화

         String callback = request.getParameter("CKEditorFuncNum");
         printWriter = response.getWriter();
         String fileUrl = "/mine/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName; // 작성화면

         // 업로드시 메시지 출력
         printWriter.println("{\"filename\" : \"" + fileName + "\", \"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");
         printWriter.flush();

      } catch (IOException e) {
         e.printStackTrace();
      } finally {
         try {
            if (out != null) {
               out.close();
            }
            if (printWriter != null) {
               printWriter.close();
            }
         } catch (IOException e) {
            e.printStackTrace();
         }
      }

      return;
   }

   /**
    * cKeditor 서버로 전송된 이미지 뿌려주기
    * 
    * @param uid
    * @param fileName
    * @param request
    * @return
    * @throws ServletException
    * @throws IOException
    */
   //
   @RequestMapping(value = "/mine/ckImgSubmit.do")
   public void ckSubmit(@RequestParam(value = "uid") String uid, @RequestParam(value = "fileName") String fileName,
         HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      // 서버에 저장된 이미지 경로
      String path = "C:/Users/01072/git/Happy/Happy/src/main/resources/static/images" + "ckImage/";

      String sDirPath = path + uid + "_" + fileName;

      File imgFile = new File(sDirPath);

      // 사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
      if (imgFile.isFile()) {
         byte[] buf = new byte[1024];
         int readByte = 0;
         int length = 0;
         byte[] imgBuf = null;

         FileInputStream fileInputStream = null;
         ByteArrayOutputStream outputStream = null;
         ServletOutputStream out = null;

         try {
            fileInputStream = new FileInputStream(imgFile);
            outputStream = new ByteArrayOutputStream();
            out = response.getOutputStream();

            while ((readByte = fileInputStream.read(buf)) != -1) {
               outputStream.write(buf, 0, readByte);
            }

            imgBuf = outputStream.toByteArray();
            length = imgBuf.length;
            out.write(imgBuf, 0, length);
            out.flush();

         } catch (IOException e) {

         } finally {
            outputStream.close();
            fileInputStream.close();
            out.close();
         }
      }
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

      return "member/join_agree";
   }

//   board
   @RequestMapping(value = "/writeAction", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
   public String writeAction(HttpServletRequest req, Model model) throws Exception {
      req.setCharacterEncoding("UTF-8");
      String nbName = req.getParameter("name");
      String nbTitle = req.getParameter("title");
      String nbContent = req.getParameter("editor4");
      String Id = req.getParameter("id");

      int nResult = notice_service.write(nbName, nbTitle, nbContent, Id);

      if (nResult < 1) {
         System.out.println("글쓰기 실패");
         model.addAttribute("msg", "글쓰기 실패");
         model.addAttribute("url", "/write");

      } else {
         System.out.println("글쓰기 성공");
         model.addAttribute("msg", "글쓰기 성공");
         model.addAttribute("url", "/nav4-2_notice");
      }
      return "redirect";
   }
}