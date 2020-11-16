<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.study.springboot.dto.MemberDto" %>


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
    <script src = "js/ckeditor/ckeditor.js"></script>
    <%
   			 MemberDto member = (MemberDto)session.getAttribute("memberInfo");
	%>
    <title>게시판</title>
    <style>
     a:link { text-decoration: none;}
     /* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
     a:hover { text-decoration: none;}
        h2 , h1{
            font-family: 'Noto Sans KR', sans-serif;
        }
        #headroom{
			border-bottom: 1px solid rgb(235,235,235);
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

       table {
            margin: 0 auto;
            width: 1200px;
            /* border:1px solid red; */
            height: 100px;
           /*  border-bottom: 2px solid grey; */
            margin-bottom: 10px;
        } 


        .right{
           width: 1650px;
            height: 100%;
            margin:20px;
           
        }
        .right img{
            float:right;
        }
        #site{
            display:inline-block;
        }
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
        input[type=submit],input[type=button]{
          width:100px;
          height:40px;
        }
        #footer_button{
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
    </table>
    <main>
        <div class="wrapper">
            <div class="left"><br>
                <div>
                    <h3 style="text-align: center;">커뮤니티</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="nav3-1_board">게시판</a></h5><br>
                    <h5><a href="nav3-2_volunteer">자원봉사신청</a></h5><br>
                </div>
                <br><br>
                <img src="images/sublogo.jpg" title="광고">
            </div>
            <div class="right">
                <div id = "site">
                    <br>
                    <h1>글쓰기</h1><hr>
                     <form action="writeAction" method="post">
                        작성자 :&nbsp;&nbsp;<%=member.getName()%>
                        <input type="hidden" id="id" name="id" value="<%=member.getId()%>">
                        <input type="hidden" id="name" name="name" value="<%=member.getName()%>"><hr>
                        제목 :&nbsp;<input type="text" size="50" id = "title" name="title"/><hr>
                        <textarea id = "editor4" name = "editor4" ></textarea>
   						<input type="hidden" name="idx" value="1" id="bidx">
                    <script>
                        CKEDITOR.replace('editor4',{width:800,height:400,
                        filebrowserUploadUrl:'/images/imageUpload.do'});
                    </script>
                     <hr>
                     <div id = "footer_button">
                        <input type="submit" class="btn btn-primary" value = "등록"/>
                        <input type="button" class="btn btn-secondary" value = "취소" onclick="location.href='nav4-1_QnA.html'"/>
                    </div>
                    </form>
                 
                </div>
            </div>
        </div>
    </main>
    <div id="footer">
		<footer style="color: white;">
			<br>
			<br>
			<br>
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