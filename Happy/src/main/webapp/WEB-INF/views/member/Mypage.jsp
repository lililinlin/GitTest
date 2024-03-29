<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ page import="com.study.springboot.dao.IMemberDao" %>    
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
    <title>마이페이지</title>
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
        /* 푸터 */
    #footer {
        text-align: center;
        margin: 0 auto;
        height: 200px;
        width: 100%;
        background-color: #424141;
        margin-top:200px;
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
			margin-bottom:-250px;
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
        .right{
	        width: 1000px;
            height: 100%;
            margin:20px;
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
        #main_table{
		   height: 400px;
		   width: 700px;
	   }
	   #main_table tr:nth-child(2n+1){
		   background-color: rgb(240, 240, 240);
	   }
	   #main_right{
		   width: 700px;
	   }
	   #btn_box{
		   text-align: center;
	   }
	   input[type=button]{
		   width: 300px;
		   height: 70px;
		   background-color: rgb(75, 75, 75);
		   border: 1px solid gray;
		   color: white;
		   margin-top: 70px;
	   }
        .title{
			width: 140px;
			text-align: center;
			border-right:1px solid rgb(216, 216, 216);
		}
		.content{
			padding-left: 40px;
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
         /* *{
            border: 1px solid red;
        }  */
    </style>

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
                    	<h2><b>내정보</b></h2>
                  		<div id="container">
							<table id="main_table">
								<tr>
									<td class="title">아이디</td>
									<td class="content"><%=member.getId() %></td>
								</tr>
								<tr>
										<td class="title">이름</td>
										<td class="content"><%=member.getName() %></td>
								</tr>
								<tr>
										<td class="title">전화번호</td>
										<td class="content"><%=member.getPhone() %></td>
								</tr>
								<tr>
										<td class="title">생년월일</td>
										<td class="content">
										<%=birthYear %>년 
										<%=birthMonth %>월 
										<%=birthDay %>일</td>
								</tr>
								<tr>
									<td class="title">주소</td>
									<td class="content"><%=member.getAddress() %></td>
								</tr>
							</table>
						
							<div id="btn_box">
								<input  onclick="location.href='modify'" type="button" value="수정하기">
							</div>
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
            
                
            </div>
            <div class="right"><br>
            
				<div id="main_right">
					<div id="h2_box">
						<h2><b>내 정보</b></h2><br>
					</div>
					
						<form>
						
							<table id="main_table">
								<tr>
									<td class="title">아이디</td>
									<td class="content"><%=member.getId() %></td>
								</tr>
								<tr>
										<td class="title">이름</td>
										<td class="content"><%=member.getName() %></td>
								</tr>
								<tr>
										<td class="title">전화번호</td>
										<td class="content"><%=member.getPhone() %></td>
								</tr>
								<tr>
										<td class="title">생년월일</td>
										<td class="content">
										<%=birthYear %>년 
										<%=birthMonth %>월 
										<%=birthDay %>일</td>
								</tr>
								<tr>
									<td class="title">주소</td>
									<td class="content"><%=member.getAddress() %></td>
								</tr>
							</table>
						
							<div id="btn_box">
								<input  onclick="location.href='modify'" type="button" value="수정하기">
							</div>
						</form>
						
					<br><br>
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