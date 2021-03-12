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
    <title>고객센터</title>
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
		#h2_box{
			border-bottom: 1px solid rgb(6, 15, 138);
		}
		#main_table{
			width: 870px;
			margin-bottom: 400px;

		}
		#main_table tr{
			border-bottom: 1px solid rgb(233, 233, 233);
		}
		#main_table th{
			text-align: center;
			height: 60px;
			font-weight: normal;
		}
		.num{
			width: 80px;
			text-align: center;
			height: 50px;
		}
		.title{
			padding-left: 20px;
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

        <div class="wrapper">
            <div class="left"><br>
                <div>
                    <h3 style="text-align: center;">고객센터</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="nav4-1_QnA">Q&A</a></h5><br>
                    <h5><a href="nav4-2_notice">공지사항</a></h5><br>
                </div>
                <br><br>
                <img src="images/sublogo.jpg"" title="광고">
            </div>
            <div class="right"><br>
				<div id="h2_box">
                    <h2><b>Q&A</b></h2><small>고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</small><br>
				</div>
                  <table id="main_table">
					  <tr>
						  <th>번호</th>
						  <th>제목</th>
					  </tr>
					  <tr>
							<td class="num">1</td>
							<td class="title">동물을 입양하고 싶어요.</td>
					  </tr>
					  <tr>
							<td class="num">2</td>
							<td class="title">봉사활동 하고 싶은데 신청은 어디서 하나요?</td>
					</tr>
					  <tr>
							<td class="num">3</td>
							<td class="title">후원하고 싶습니다.</td>
					  </tr>
					  <tr>
							<td class="num">4</td>
							<td class="title">방문하고 싶습니다.</td>
					  </tr>
					  <tr>
							<td class="num">5</td>
							<td class="title">후원하고 싶습니다.</td>
					  </tr>

				  </table>

               
                
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