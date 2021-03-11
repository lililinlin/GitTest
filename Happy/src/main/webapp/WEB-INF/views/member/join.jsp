<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
    <title>회원가입</title>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
	 /* border-bottom: 1px solid rgb(235,235,235);
		margin-bottom: 10px; */
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
 /* 메인 */
        
        #wrapper {
            width: 800px;
            margin: 0 auto;
        }
        #main_top_div{
        	margin: 0 auto;
        	width: 720px;
        	text-align:center;
        	border-bottom:1px solid rgb(172, 172, 172);
        }
        #main_top{
        	margin-top:60px;
        	margin-bottom:50px;
        	width:700px;
        }
        #content_box{
        	padding-left: 40px;
        	width: 800px;
			margin-bottom: 130px;
        }
        table{
        	width: 700px;
            margin: 0 auto;
            margin:50px 0px 100px 0px;
        }
        .title{ /* 테이블 1번째 열 */
            width: 140px;
            height: 40px;
        }
        #input_userId{ /* 아이디 input */
            width: 450px;
        }
        #id_check{ /* 중복확인 버튼 */
            width: 90px;
        }
        #password,#passwordcherk,#name, #phone{
            width: 450px;
        }
        select{ /* 월 선택 */
            width: 114px;
            height: 40px;
        }
        #sample6_postcode{ /* 우편 번호 */
            width: 450px;
        }
        #find_address{ /* 우편번호 찾기*/
            margin-top: 20px;
            width: 220px;
            border: 1px solid rgb(111, 111, 111);
            background-color: white;
            color: rgb(135, 135, 135);
        }
        #sample6_address{ /* 주소 input */
            width: 450px;
        }
        #sample6_detailAddress { /* 상세주소 input */
            width: 450px;
        }
        #sample6_extraAddress { /* 참고항목 input */
            width: 450px;
        }
        #content_box input{
            height: 40px;
        }
        #final{ /* 확인 버튼 */
            width: 450px;
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
        /* *{
            border: 1px solid red;
        } */

    </style>

<body>
    <script>
    function checkValue()
	{
		if(!document.userInfo.id.value){
			alert("아이디를 입력하세요.");
			return false; //submit 취소
		}
		
		var idChecked = $('#check_hidden').val();
		if( idChecked != "yes") {
			alert("아이디 중복확인을 해주세요.");
			return false;
		}
		
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
        function idCheck() {
			var user_id = $('#input_userId').val();
			
			if(!user_id){
				alert("아이디를 입력하세요.");
				return false;
			}
			// ajax 용도 : 화면 갱신(reload,redirect)가 없이
			//            부분화면 갱신(통신)을 js에서 한다.
			//           예)네이버 - 실시간검색어, 실시간날씨
			
			// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
			$.ajax({
				/* url : 'http://localhost:8080/servlet3_LoginJoinDB/IdCheckAction.do?id='+ user_id, */
				url : '${pageContext.request.contextPath}/IdCheckAction?id='+ user_id,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복됨, 0 = 중복안됨 : "+ data);							
					
					if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						alert("아이디가 중복됩니다.");
						$('#check_hidden').val("no");
					} else {
						// 0 : 아이디가 안됨.
						alert("아이디가 사용가능합니다.");
						$('#check_hidden').val("yes");
					}
				}, 
				error : function() {
						console.log("실패");
				}
			});
		}
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

        <div id="wrapper">
	        <div id="main_top_div">
		        <div id="main_top">
		            <h2><b>회원가입</b></h2>
		        </div>
	        </div>
	        <div id="content_box">
            <form method="post" action="MemberJoinAction" 
				name="userInfo" onsubmit="return checkValue()">
                <table>
                   <tr>
                       <td class="title">아이디</td>
                       <td><input id="input_userId" type="text" name="id" size="46"></td>
                       <td id="check"> &nbsp;&nbsp;&nbsp;<input type="button" id="id_check" class="btn btn-dark"  value="중복확인" onclick="idCheck()">
                       <input id="check_hidden" type="hidden"	value="no" />
                       </td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td class="title">비밀번호</td>
                       <td><input type="password" id="password" name="password" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                        <td class="title">비밀번호확인&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       <td><input type="password" id="passwordcherk" name="passwordcherk" size="46"></td>
                       <tr><td><td><br><h6 id="chkNotice" size="2"></h6></td></td></tr>
                   </tr>
                   <tr>
                        <td class="title">이름</td>
                       <td><input type="text" id="name" name="name" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                        <td class="title">전화번호</td>
                       <td><input type="text" id="phone" name="phone" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                         <td class="title">생년월일</td>
                       <td><input type="text" name="birth_year" size="10" placeholder="4자리">&nbsp;년&nbsp;
                           						<select name="birth_month">
							<option value=""> </option>
							<option value="01" >1</option>
							<option value="02" >2</option>
							<option value="03" >3</option>
							<option value="04" >4</option>
							<option value="05" >5</option>
							<option value="06" >6</option>
							<option value="07" >7</option>
							<option value="08" >8</option>
							<option value="09" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
						</select>&nbsp;월&nbsp;
                           <input type="text" name="birth_day" size="8">&nbsp;일</td>
                           <tr><td><br></td></tr>
                   </tr>
                   <tr>
                    <td class="title">주소</td>
                       <td><input name="add1" type="text" id="sample6_postcode" placeholder="우편번호"><br>
                        <input type="button" id="find_address" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                        <input name="add2" type="text" id="sample6_address" placeholder="주소"><br><br>
                        <input name="add3" type="text" id="sample6_detailAddress" placeholder="상세주소"><br><br>
                        <input name="add4" type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
                   </tr>
                   <tr><td><br></td></tr>
                   <tr><td></td><td><input type="submit" id="final" class="btn btn-dark"  value="확인" style="height: 60px;"></button></td></tr>
   
                </table>
               </form>
               </div>
        </div>
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