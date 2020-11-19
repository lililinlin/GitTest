<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.study.springboot.dto.MemberDto" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%
	MemberDto member = (MemberDto)session.getAttribute("memberInfo");
    Date birth = (Date)member.getBirth();
	int birthYear = 2000;
	int birthMonth = 1;
	int birthDay = 1;
	if( birth != null ) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(birth);
		birthYear = cal.get(Calendar.YEAR)-1900;
		birthMonth = cal.get(Calendar.MONTH)+1;
		birthDay = cal.get(Calendar.DAY_OF_MONTH);
	} 
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bxslider의 css 추가 -->
    <link rel="stylesheet" href="css/jquery.bxslider.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>회원정보수정</title>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
     	a:link { text-decoration: none;}
    	/* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
 		a:hover { text-decoration: none;}
        h2,h1 {
			font-family: 'Noto Sans KR', sans-serif;
	    }
	    /* 헤더 */
	    #headroom {
	        border-bottom: 1px solid rgb(235, 235, 235);
	        margin-bottom: 10px;
	    }
	
	    .head {
	        margin: 0 auto;
	        width: 1200px;
	        height: 100px;
	    }
	
	    #logo {
	        width: 400px;
	        height: 100px;
	    }
	
	    .headerlogtd {
	        text-align: right;
	        vertical-align: bottom;
	    }
	
	    .headerlog {
	        color: rgb(150, 147, 147);
	        font-size: 13px;
	        text-decoration: none;
	    }
	
	    .menumaintd {
	        width: 200px;
	        list-style-type: none;
	        text-decoration: none;
	        color: rgb(150, 147, 147);
	        text-align: center;
	    }
	
	    .mainmenu {
	        text-decoration: none;
	        color: black;
	    }
	    a:link { text-decoration: none;}
	    /* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
	    a:hover { text-decoration: none;}
	    .hov {
	        background-color: white;
	        font-size: 25px;
	        width: 180px;
	        margin-top: 14px;
	        display: none;
	        position: absolute;
	        list-style-type: none;
	        text-decoration: none;
	        z-index: 100;
	        padding-top: 0px;
	        border-top: 2px solid rgb(189, 189, 193);
	        padding-left: 0px;
	        margin-left: 10px;
	        text-align: center;
	    }
	
	    .hov li {
	        border-bottom: 2px solid rgb(189, 189, 193);
	    }
	
	    .hov a {
	        color: black;
	        font-size: 13px;
	    }
	
	    .hov:hover ul {
	        display: block;
	    }
	
	    .hov li:nth-child(n):hover {
	        background-color: rgb(118, 118, 118);
	    }
	
	    .hov li:nth-child(n):hover a {
	        color: white;
	    }
	    /* .hov:hover li:nth-child(n){
	            background-color: hotpink;
	            } */
	    .menumaintd:hover .hov {
	        display: block;
	    }
        /* 푸터 */
    #footer {
        text-align: center;
        margin: 0 auto;
        height: 200px;
        width: 100%;
        background-color: #424141;
    }

    footer a {
        color: white;
    }
/* 메인 */
        .wrapper {
            display: flex;
            width: 1200px;
            margin: 0 auto;
        }
        .left {
            width: 350px;
            height: 100%;
            font-family: 'Noto Sans KR', sans-serif;   
        }
        .left a{
            color: black;
            /* font-weight: bold; */
        }
        .site_int {
            margin:20px;
            border-top: 1px solid #b2b2a2;
        }
        .right{
	        width: 1650px;
            height: 100%;
            margin:20px;
        }
       
        #right-site{
            display:inline-block;
            background-color: rgb(250, 250, 250);
        }
        #right-1{
            background-color: rgb(250, 250, 250);
        }
       

        

        #introduce_title{
            color: rgb(132, 189, 246);
        }

        /* *{
            border: 1px solid red;
        } */
    </style>
    
</head>

<body>
 <script>
    function checkValue()
	{
		if(!document.userInfo.password.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
        $(function(){
            $('#password').keyup(function(){
            $('#chkNotice').html('');
            });

            $('#passwordcherk').keyup(function(){

                if($('#password').val() != $('#passwordcherk').val()){
                $('#chkNotice').html('<b>비밀번호 일치하지 않음</b><br><br>');
                $('#chkNotice').css('color', '#f82a2aa3');
                } else{
                $('#chkNotice').html('<b>비밀번호 일치함</b><br><br>');
                $('#chkNotice').css('color', '#199894b3');
                }

            });
        });
        </script>
   <header id="headroom">
            <table class="head">
                <tr>
                    <td rowspan="2"><a href="Home"><img src="images/logo2.jpg"
                            id="logo" alt=""></a></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    
                <%
					// 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
				if (session.getAttribute("sessionID") == null) {
				%>
				<td class="headerlogtd"><span><a href="login"
						class="headerlog">로그인<h> |&nbsp;</h></a><a href="join_agree"
						class="headerlog">회원가입</a></span></td>
				<%
					} else {
				%>
				<td class="headerlogtd"><span><a
						href="MemberLogoutAction" class="headerlog">로그아웃<h> |</h></a><a
						href="Mypage" class="headerlog">&nbsp;마이페이지</a></span></td>
				<%
					}
				%>
                </tr>
                <tr>
                    <ul id="menu">
                        <td class="menumaintd">
                            <li><a href="nav1-1_site" class="mainmenu">
                                    <h6>
                                        <b>사이트소개</b>
                                    </h6>
                            </a>
                                <ul class="hov">
                                    <li><a href="nav1-1_site">사이트소개</a></li>
                                    <li><a href="nav1-2_map">오시는길</a></li>
                                </ul></li>
                        </td>
                        <td class="menumaintd">
                            <li><a href="nav2-1_adopt" class="mainmenu">
                                    <h6>
                                        <b>입양하기</b>
                                    </h6>
                            </a>
                                <ul class="hov">
                                    <li><a href="nav2-1_adopt">입양하기</a></li>
                                    <li><a href="nav2-2_adopted">입양됐어요</a></li>
                                    <li><a href="nav2-3_review">입양후기</a></li>
                                </ul></li>
                        </td>
                        <td class="menumaintd">
                            <li><a href="nav3-1_board" class="mainmenu">
                                    <h6>
                                        <b>커뮤니티</b>
                                    </h6>
                            </a>
                                <ul class="hov">
                                    <li><a href="nav3-1_board">게시판</a></li>
                                    <li><a href="nav3-2_volunteer">자원봉사신청</a></li>
                                </ul></li>
                        </td>
                        <td class="menumaintd">
                            <li><a href="nav4-1_QnA" class="mainmenu">
                                    <h6>
                                        <b>고객센터</b>
                                    </h6>
                            </a>
                                <ul class="hov">
                                    <li><a href="nav4-1_QnA">Q&A</a></li>
                                    <li><a href="nav4-2_notice">공지사항</a></li>
                                </ul></li>
                        </td>
                    </ul>
                </tr>
            </table>
        </header>
    <main>
        <div class="wrapper">
            <div class="left"><br>
                <div>
                    <h3 style="text-align: center;">마이페이지</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="Mypage">내 정보</a></h5><br>
                    <h5><a href="Modify">회원정보수정</a></h5><br>
                    <h5><a href="">내가 작성한 글</a></h5><br>
                    <h5><a href="">후원 내역</a></h5>
                </div>
                <br><br>
                <img src="images/sublogo.jpg" title="광고">
            </div>
            <div class="right">
               <h1><b>회원정보수정</b></h1><br>
                  <form method="post" action="MemberModifyAction" 
				name="userInfo" onsubmit="return checkValue()">
                <table>
                   <tr>
                       <td>아이디</td>
                       <td><%=member.getId() %></td>
                       <td></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>비밀번호</td>
                       <td><input type="password" id="password"name="password" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>비밀번호확인&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       <td><input type="password" id="passwordcherk" name="passwordcherk" size="46"></td>
                       <tr><td><td><br><h6 id="chkNotice" size="2"></h6></td></td></tr>
                   </tr>
                   <tr>
                    <td>이름</td>
                    <td><%=member.getName() %></td>
                    <td></td>
                    <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>전화번호</td>
                       <td><input type="text" name="phone" size="46" <%=member.getPhone() %>></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>생년월일</td>
                       <td><%=birthYear %>년 <%=birthMonth %>월 <%=birthDay %>일</td>
                           <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>주소</td>
                       <td><input name="add1" type="text" id="sample6_postcode" placeholder="우편번호" >
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                        <input name="add2" type="text" id="sample6_address" placeholder="주소"><br><br>
                        <input name="add3" type="text" id="sample6_detailAddress" placeholder="상세주소">
                        <input name="add4" type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
                   </tr>
                   <tr><td><br></td></tr>
                   <tr><td></td><td><input type="submit" class="btn btn-dark"  value="수정" style="width: 370px;"></td></tr>
   
                </table>
               
   
               
               </form><br><br>
            </div>

        </div>
    </main>
    <div id="footer">
		<footer style="color: white;">
			<br> <br> <br>
			<p>
				<a href="footer_yak">이용약관&nbsp;&nbsp;</a> | <a href="footer_info">&nbsp;개인정보취급방침&nbsp;&nbsp;</a>
				| <a href="footer_email">&nbsp;이메일주소무단수집거부</a><br> 서울특별시 노원구 ｜
				전화 : 02-1111-1111 ｜ 팩스 : 02-1111-1111 ｜ 사업자등록번호 : 111-11-11111 ｜ 대표
				: 강이린<br> Copyright ⓒ 2019, Seoul Abandoned Animal Adoption
				Center All rights reserved. This is a nonprofit site.
			</p>
		</footer>
	</div>
</body>

</html>