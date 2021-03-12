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
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>사이트소개</title>
    <style>
    	a:link { text-decoration: none;}
    	/* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
 		a:hover { text-decoration: none;}
        * {
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
		main{
			width:1200px;
			height:850px;
			margin:0 auto;
			margin-top:60px;
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
			margin-top:30px;
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
        /* 메인 컨텐트 이미지 */
        #imag{
        	margin-top:-30px;
        	margin-left:-22px;
        }
        /* 메인 div */
        #main_content{
        	width:890px;
        }
        /* 메인 상단 div */
        #content{
        	margin-left:300px;
        	margin-top:30px;
        	width:800px;
        	padding:30px 0px 10px 30px;
        	background-color:#fafafa;
        }
        /* 메인 하단 div */
        #content2{
        	margin-top:30px;
        	margin-left:300px;
        }
        #introduce_title{
        	color:#22409a;
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
			margin-top:-809px;
			
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
    	<!-- 사이드광고 자동 스크롤 -->
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
	
	<div id ="main_wrapper">
		<div id="left_menu">
			<h3><b>사이트 소개</b></h3>
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
		
		<div id="main_content">
			<div id="content">
				<h3 style="margin-bottom: 10px;">해피퍼피 소갯말</h3>
				<br>
	            <img src="images/introduce_img.jpg" title="소개" id = "imag">
            </div>
            
            <div id ="content2">
            	<h5 id ="introduce_title"><b>소중한 후원금은 동물들을 위해 다음과 같이 쓰입니다.</b></h5><br>
                <p><b>1. 동물보호 캠페인 및 홍보 :</b> 동물의 보호 및 유기동물입양 증대를 위한 홍보<br>
                        
                <b>2. 동물보호를 위한 교육사업 :</b> 유기동물 발생 방지를 위한 교육자료 기획 배포 및 동물보호 교육실시<br>
                        
                <b>3. 입양지원 :</b> 유기동물의 안락사 수를 줄이고 입양을 통한 새 삶의 기회 부여<br>
                        
                <b>4. 개인보호소 지원 :</b> 열악한 개인보호소 지원을 통한 동물보호 및 자립심 부여<br><br>
                        
                입양센터에서는 자원봉사자 여러분의 커뮤니티 활동 활성화를 위해<br>
                동물아트 전시회, 원데이 클래스 등을 진행하고 있습니다.<br>
                반려동물을 사랑하고, 유기동물 보호에 관심있는 많은 분들의 참여를 기다립니다.<br>
                        
                <b>해피퍼피 드림.</b></p>
            </div>
		</div>
	</div>
	
	
        <!-- <div class="wrapper">
            <div class="left"><br>
                <div>
                    <h3 style="text-align: center;">사이트 소개</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="nav1-1_site">사이트 소개</a></h5><br>
                    <h5><a href="nav1-2_map">오시는 길</a></h5>
                </div>
                <br><br>
                
            </div>
           
            <div class="right">
                <h1><b>사이트 소개</b></h1><br>
                <div id="right-1">
                	<img src="images/dog_12.jpg" title="소개" id = "imag">
                    <div id = "right-site">
                        <br>
                        <h5>안녕하세요? 해피퍼피입니다.</h5>
                        <p>저희 입양센터에서는 유기동물을 보호하고,<br>
                        새로운 가족을 만날 수 있도록 도움을 드리고 있습니다.<br><br>

                        동물과 공존하는 세상!<br>
                        여러분의 관심과 사랑이 함께하면 현실이 됩니다.<br><br>

                        유기동물을 돕는 방법에는 입양,자원봉사,후원 등이 있습니다.<br>
                        입양센터 홈페이지에 있는 센터 아이들을 입양하실 수 있고,<br>
                        자원봉사 신청을 통해 희망하는 일자에 봉사활동을
                        <br> 하실 수 있습니다.<br>
                        또한 '후원하기'를 통해 입양센터를 후원하실 수 있습니다.<br></p>
                    </div>
                
                </div>
                
                <br>
                <div id = "right-bottom">
                    <h5 id ="introduce_title"><b>소중한 후원금은 동물들을 위해 다음과 같이 쓰입니다.</b></h5><br>
                    <p><b>1. 동물보호 캠페인 및 홍보 :</b> 동물의 보호 및 유기동물입양 증대를 위한 홍보<br>
                        
                    <b>2. 동물보호를 위한 교육사업 :</b> 유기동물 발생 방지를 위한 교육자료 기획 배포 및 동물보호 교육실시<br>
                        
                    <b>3. 입양지원 :</b> 유기동물의 안락사 수를 줄이고 입양을 통한 새 삶의 기회 부여<br>
                        
                    <b>4. 개인보호소 지원 :</b> 열악한 개인보호소 지원을 통한 동물보호 및 자립심 부여<br><br>
                        
                    입양센터에서는 자원봉사자 여러분의 커뮤니티 활동 활성화를 위해<br>
                    동물아트 전시회, 원데이 클래스 등을 진행하고 있습니다.<br>
                    반려동물을 사랑하고, 유기동물 보호에 관심있는 많은 분들의 참여를 기다립니다.<br>
                        
                    <b>해피퍼피 드림.</b></p>
                </div>
                
            </div>
			<div id ="side_img" class="float_sidebar">
		<table id ="side_table">
			<tr>
				<td><img src="images/Advertising1.jpg"></td>
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
       </div><br><br>
         -->
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