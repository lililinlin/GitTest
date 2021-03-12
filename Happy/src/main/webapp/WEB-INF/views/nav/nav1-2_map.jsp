<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    
    <title>오시는길</title>
    <script 
        src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous">
    </script>
    <style>
        a:link { text-decoration: none;}
    	/* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
 		a:hover { text-decoration: none;}
        * {
	 		 font-family: 'Noto Sans KR', sans-serif;
		}
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
	    }
	
	    footer a {
	        color: white;
	    }
 /* 메인 */
        main{
			width:1800px;
			height:850px;
			margin:0 auto;
			margin-top:50px;
			margin-bottom:70px;
		}
		 /* 왼쪽 오른쪽 담은 div */
        #main_wrapper{
        	width:1200px;
        	display:flax;
        	height:800px;
			margin:0 auto; 
        }
        /* 왼쪽 카테고리 */
        #left_menu{
        	float:left;
			
			width:300px;
			margin-top:0px;
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
        /* 메인 div */
        #main_content{
        	width:890px;
        }
        /* 메인 상단 div */
        #content{
        	margin-left:300px;
        	margin-top:30px;
        	width:600px;
        	padding:30px 0px 10px 30px;
        }
        
       #table2{
            width: 800px;
            text-align: center;
            margin-bottom: 100px;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 20px;
        }
        #table2 img{
            width: 160px;
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
			margin-top:-869px;
			
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
    </style>
</head>

<body>
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
		
		<div id="main_wrapper">
			<div id="left_menu">
				<h3><b>오시는 길</b></h3>
				<table>
					<tr onclick="location.href='nav1-1_site'">
						<td>사이트 소개</td>
						<td>></td>
					</tr>
					<tr onclick="location.href='nav1-2_map'">
						<td>오시는 길</td>
						<td>></td>
					</tr>
				</table>
			</div>
			<h3><b>오시는 길</b></h3>
			<div id ="main_content">
				<div id ="content">
					<table id="table2">
	                	<tr>
		                    <td style="width: 300px;"><img src="/images/metro.png"></td>
		                    <td style="width: 300px;"><img src="/images/car.png"></td>
		                    <td style="width: 300px;"><img src="/images/bus.png"></td>
	                    </tr>
	                    <tr>
		                    <td><b>버스</b><br><br>버스정류장(11-211) </td>
		                    <td><b>자차</b><br><br>건물 옆 유료주차장 이용 가능 </td>
		                    <td><b>지하철</b><br><br>4호선 노원역2번 출구에서41m</td>
	                    </tr>
	                </table> 
	                <div style="width: 850px; height: 400px;">
	                	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.719533018484!2d127.06023691559015!3d37.65579732676832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cb941d9c739c5%3A0x8ecd52574c78556d!2z7J207KCg7JWE7Lm0642w66-47Lu07ZOo7YSw7ZWZ7JuQIOuFuOybkOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1604370144648!5m2!1sko!2skr" 
	                    width="850" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	                </div><br><br>
				</div>
			</div>
		</div>
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