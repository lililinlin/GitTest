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
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>회원정보수정</title>
      <script>
        $(function() { 
             var lnb = $("#nav_wrapper").offset().top;
             $(window).scroll(function() {
                var window = $(this).scrollTop();
 
                if(lnb <= window) {
                   $("#nav_wrapper").addClass("fixed");
                } else {
                   $("#nav_wrapper").removeClass("fixed");
                }
             })
          });
    </script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <style>
     	a:link { text-decoration: none;}
    	/* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
 		a:hover { text-decoration: none;}
        * {
			font-family: 'Noto Sans KR', sans-serif;
	    }
	    /* 헤더 */
	   #head {
			margin: 0 auto;
			width: 1200px;
			height: 100px;
			background-color: white; 
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
	    #nav_wrapper{
		    width:100%;
		    padding-bottom: 2px;
			box-shadow: 3px 3px 3px 1px rgb(247, 245, 245); 
		}
		#nav_wrapper.fixed{
		    position: fixed;
		    padding-bottom: 20px;
		    left: 0; 
		    top: 0; 
		    width: 100%; 
		    height:115px;
		    background-color: white; 
		    z-index:100; 
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
	        height:47px;
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
		margin-top: 200px;
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
	main{
			width:1200px;
			height:820px;
			margin:0 auto;
			margin-top:60px;
			margin-bottom:100px;
		}
/* 왼쪽 오른쪽 담은 div */
        #main_wrapper{
        	width:1200px;
        	height:750px;
			margin:0 auto;
        }
/* 왼쪽 카테고리 */
		#left_menu{
        	float:left;
			width:300px;
		}
        #left_menu table{
            margin: 30px 0px 0px 10px;
            width: 200px;
            height: 40px;
        }
        #left_menu table td{
            height: 50px;
            padding-left: 20px;
        }
        #left_menu table tr{
            border: 1px solid rgb(231, 231, 231);
        }
        #left_menu tr:hover{
            background-color: rgb(251, 249, 249);            
            cursor: pointer;
            color: #22409a;
        }
        .site_int {
            margin:20px;
            border-top: 1px solid #b2b2a2;
        }
        .right{ 
	        width: 1650px;
            height: 100%;
            margin:20px 20px 20px 90px;
        }
       
        #right-site{
            display:inline-block;
            background-color: rgb(250, 250, 250);
        }
        #right-1{
            background-color: rgb(250, 250, 250);
        }
        #find_address{ /* 우편번호 찾기 버튼 */
        	width: 220px;
        	background-color:white;
        	border: 1px solid gray;
			color: gray;
			height: 40px;
        }
		#password,
		#passwordcherk,#phone{ /* 비밀번호 비밀번호체크 전화번호 input */
			width: 430px;
			height: 40px;
		}
		#sample6_postcode, /* 우편번호 주소 상세주소 참고항목 input */
		#sample6_address,
		#sample6_detailAddress,
		#sample6_extraAddress {
			width: 430px;
			margin-bottom: 25px;
			height: 40px;
		}
		#h2_box{ /* 회원정보수정 글씨 박스 */ 
			width: 560px;	
			border-bottom: 1px solid rgb(162, 162, 162);
			margin-bottom: 25px;
			text-align: center;
		}
        #btn{ /* 수정 버튼 */
			width: 430px;
			height: 60px;
			background-color: rgb(75, 75, 75);
		    border: 1px solid gray;
		    color: white;
		}

        .right img{
            float:right;
        }
        #site{
            display:inline-block;
        }
        #container{
        	margin-top:30px;
        }
        /* 따라오는 사이드 바 */
		#side_table td{
				border:1px solid  #e5e5e5;
				background-color: white;
		}
		#side_img{
			float:right;
			width:180px;
			margin-right:38px;	
			margin-top:100px;
		}
		#side_img img{
			width:160px;
			height:200px;
		}
		.side_p{
			width:156px;
			padding-top:10px;
			text-align: center;
		}
/* 
         *{
            border: 1px solid red;
        }  */
    </style>
    
</head>

<body>
	<script>
	      $(function(){ 
	         var $win = $(window); 
	         var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
	         /*사용자 설정 값 시작*/ 
	         var speed = 700; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec) 
	         var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing 
	         var $layer = $('.float_sidebar'); // 레이어 셀렉팅 
	         var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px 
	         $layer.css('position', 'relative').css('z-index', '1'); 
	         /*사용자 설정 값 끝*/ 
	         // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해 
	         if (top > 0 ) 
	            $win.scrollTop(layerTopOffset+top); 
	            else $win.scrollTop(0); 
	            //스크롤이벤트가 발생하면 
	            $(window).scroll(function(){ 
	               yPosition = $win.scrollTop() + 10; //이부분을 조정해서 화면에 보이도록 맞추세요 
	               if (yPosition < 0) { 
	                  yPosition = 0; 
	               } 
	               $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
	         }); 
	      }); 
	   </script>
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
   <div id ="nav_wrapper">
		<table id="head">
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
		</div>
		<div id ="side_img" class="float_sidebar">
			<table id ="side_table">
				<tr>
					<td><img src="images/side_img.jpg"></td>
				</tr>
				<tr>
					<td><p class="side_p" onclick="location.href='nav2-1_adopt'"style="cursor: pointer;">입양하기</p></td>
				</tr> 
				<tr>
					<td><p class="side_p" onclick="location.href='nav2-3_review'"style="cursor: pointer;">입양후기</p></td>
				</tr>
				<tr>
					<td><p class="side_p">1600-1111</p></td>
				</tr>
			</table>
		</div>
		<main>
			<div id="main_wrapper">
            	<div id="left_menu">
					<h3><b>마이페이지</b></h3>
					<table>
						<tr onclick="location.href='Mypage'">
							<td>내정보</td>
							<td>></td>
						</tr>
						<tr onclick="location.href='modify'">
							<td>회원정보수정</td>
							<td>></td>
						</tr>
						<tr onclick="location.href='my_Write'">
							<td>내가 작성한 글</td>
							<td>></td>
						</tr>
					</table>
				</div>
            	<div class="right">
                	<div id = "site">
                    	<h2><b>회원정보수정</b></h2>
                  		<div id="container">
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
				                       <td><input type="password" id="password"name="password" ></td>
				                       <tr><td><br></td></tr>
				                   </tr>
				                   <tr>
				                       <td>비밀번호확인&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                       <td><input type="password" id="passwordcherk" name="passwordcherk"></td>
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
				                       <td><input type="text" id="phone" name="phone" <%=member.getPhone() %>></td>
				                       <tr><td><br></td></tr>
				                   </tr>
				                   <tr>
				                       <td>생년월일</td>
				                       <td><%=birthYear %>년 <%=birthMonth %>월 <%=birthDay %>일</td>
				                           <tr><td><br></td></tr>
				                   </tr>
				                   <tr>
				                       <td>주소</td>
				                       <td><input name="add1" type="text" id="sample6_postcode" placeholder="  우편번호" ><br>
				                        <input type="button" id="find_address" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
				                        <input name="add2" type="text" id="sample6_address" placeholder="  주소"><br>
				                        <input name="add3" type="text" id="sample6_detailAddress" placeholder="  상세주소"><br>
				                        <input name="add4" type="text" id="sample6_extraAddress" placeholder="  참고항목"></td>
				                   </tr>
				                   <tr><td><br></td></tr>
				                   <tr><td></td><td><input type="submit" id="btn" value="수정" ></td></tr>
				                </table>
				              </form><br><br>
						</div>
					</div>
				</div>
			</div>
			
		</main>
        <%-- <div class="wrapper">
            <div class="left"><br>	
                <div>
                    <h3 style="text-align: center;">마이페이지</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="Mypage">내 정보</a></h5><br>
                    <h5><a href="modify">회원정보수정</a></h5><br>
                    <h5><a href="">내가 작성한 글</a></h5><br>
                    <h5><a href="">후원 내역</a></h5> 
                </div>
                <br><br>
                <img src="images/sublogo.jpg" title="광고">
            </div>
            <div class="right"><br>
				<div id="h2_box">
              		 <h2><b>회원정보수정</b></h2><br>
				</div>
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
                       <td><input type="password" id="password"name="password" ></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>비밀번호확인&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       <td><input type="password" id="passwordcherk" name="passwordcherk"></td>
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
                       <td><input type="text" id="phone" name="phone" <%=member.getPhone() %>></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>생년월일</td>
                       <td><%=birthYear %>년 <%=birthMonth %>월 <%=birthDay %>일</td>
                           <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>주소</td>
                       <td><input name="add1" type="text" id="sample6_postcode" placeholder="  우편번호" ><br>
                        <input type="button" id="find_address" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                        <input name="add2" type="text" id="sample6_address" placeholder="  주소"><br>
                        <input name="add3" type="text" id="sample6_detailAddress" placeholder="  상세주소"><br>
                        <input name="add4" type="text" id="sample6_extraAddress" placeholder="  참고항목"></td>
                   </tr>
                   <tr><td><br></td></tr>
                   <tr><td></td><td><input type="submit" id="btn" value="수정" ></td></tr>
   
                </table>

               </form><br><br>
            </div>
			<div id ="side_img" class="float_sidebar">
				<table id ="side_table">
					<tr>
						<td><img src="images/side_img.jpg"></td>
					</tr>
					<tr>
						<td><p class="side_p" onclick="location.href='nav2-1_adopt'"style="cursor: pointer;">입양하기</p></td>
					</tr> 
					<tr>
						<td><p class="side_p" onclick="location.href='nav2-3_review'"style="cursor: pointer;">입양후기</p></td>
					</tr>
					<tr>
						<td><p class="side_p">1600-1111</p></td>
					</tr>
				</table>
			</div>
        </div> --%>
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