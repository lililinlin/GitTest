<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.study.springboot.dto.MemberDto" %>
<%@ page import="com.study.springboot.dto.QnADto"%>
    
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
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>QnA 수정하기</title>
       
    
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
    <%
   			 MemberDto member = (MemberDto)session.getAttribute("memberInfo");
    		QnADto content_view = (QnADto)session.getAttribute("content_view");
    		
	%>
    <style>
        a:link { text-decoration: none;}
    	/* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
 		a:hover { text-decoration: none;}
/* 헤더 */
        * {
			font-family: 'Noto Sans KR', sans-serif;
	    }
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

/* 메인 */
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
            height: 80px;
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
/* 오른쪽 */
        .right{
	        width: 1650px;
            height: 100%;
            margin:20px; 
        }
	/* 게시판 작성하기 감싼 div */
		#h2_box{
			margin-top:5px;
			width:750px;
			border-bottom: 1px solid rgb(6, 15, 138);
			padding-bottom: 10px;
			margin-bottom: 30px;
		}
	/* 테이블 */
		#main_table{
			width: 750px;
			margin-bottom: 100px;
			border: 1px solid rgb(244, 244, 244);
		}
		#main_table td:nth-child(1){
			background-color: rgb(244, 244, 244);
		}
		#main_table td{
			border: 1px solid rgb(237, 237, 237);
		}
		#main_table input{
			border: 1px solid rgb(181, 181, 181);
		}
	/* 제목 작성자 내용 */
		.td_title{
			width: 120px;
			text-align: center;
			color: rgb(106, 106, 106);
		}
	/* 제목 input */
		#qbTitle{
			height: 30px;
			width: 590px;
			margin: 15px 10px 15px 20px;
			 }
	/* 작성자 input */
		.name{
			padding: 13px 10px 13px 20px;
		}
	/* 내용 input */
		#qbContent{
			width:590px; 
			height: 400px; 
			margin: 20px 10px 20px 20px;
			border: 1px solid rgb(181, 181, 181);
			}

		
/* 버튼 */
		#footer_button{
          text-align: center;
		  padding-top: 20px;
        }
        input[type=submit]{
           width:250px;
           height:60px;
           background-color:rgb(27, 40, 138);
		   color: white;
		   border: none;
        }
        input[type=button]{
          margin-left:10px;
          width:250px;
          height:60px;
          border:1px solid gray;
		  background-color: white;
		  color: gray;
		  
        }
/* 오른쪽 배너 */
		#site{
			margin-top:-23px;
            display:inline-block;
            width:800px;
        }

        #side_table td{
				border:1px solid  #e5e5e5;
				background-color: white;
		}
		#side_img{
			float:right;
			width:180px;
			margin-right:38px;
			margin-top:-880px;
			
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
        }  */
    </style>
</head>

<body>
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

<main>
     		<div id="main_wrapper">
            
				<div id="left_menu">
				<h3><b>고객센터</b></h3>
				<table>
					<tr onclick="location.href='nav4-1_QnA'">
						<td>Q&A</td>
						<td>></td>
					</tr>
					<tr onclick="location.href='nav4-2_notice'">
						<td>공지사항</td>
						<td>></td>
					</tr>
				</table>
			</div>
           
				<div class="right">
					<div id = "site">
						<br>
						<div id="h2_box">
							<h3><b>Q_A 수정하기</b></h3>
						</div>

						<form action="Q_A_ModifyAction" method="post">
							
							<table id="main_table">
								<tr>
									<td class="td_title">제목 &nbsp;</td>
								<%-- <td><input type="text" id="title" name="title" ><%=content_view.getQbTitle() %></td> --%>
								<td><textarea id="qbTitle" name="qbTitle" ><%=content_view.getQbTitle() %></textarea></td>
								</tr>
								<tr>
									<td class="td_title">작성자 </td>
									<td class="name">해피퍼피 관리자<input type="hidden" id="name" name="name"></td>
								</tr>
								<tr>
									<td class="td_title">내용</td>
									<td> <textarea id="qbContent" name="qbContent" ><%=content_view.getQbContent() %></textarea></td>
								</tr>
							</table>

							<div id = "footer_button">
								<input type="submit"  value = "수정완료"/>
								<input type="button"  value = "돌아가기" onclick="location.href='nav3-1_board'"/>
							</div>

						</form>
					</div> 
          		 </div>

        	</div>
		
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
		
               
                
           	
        </main>
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