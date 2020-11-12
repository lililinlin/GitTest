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
        .right{
	        width: 1650px;
            height: 100%;
            margin:20px;
            font-family: 'Noto Sans KR', sans-serif;
        }
        .right img{
            float:right;
        }
        #right-site{
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
        /* *{
            border: 1px solid red;
        } */
        #table2 img{
            margin-right: 70px;
            text-align: center;
            width: 150px;
        }
        #table2{
            width: 100%;
            text-align: center;
            margin-bottom: 100px;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 20px;
        }
        .site_int h5:nth-child(n):hover a{
        	font-size:22px;
        	font-weight: bold;
        	color:rgb(118, 118, 118);
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
                    
                    <td class="headerlogtd"><span><a href="login"
                            class="headerlog">로그인<h> |&nbsp;</h></a><a href="join_agree"
                            class="headerlog">회원가입</a></span></td>
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
                    <h3 style="text-align: center;">사이트 소개</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="nav1-1_site">사이트 소개</a></h5><br>
                    <h5><a href="nav1-2_map">오시는 길</a></h5>
                </div>
                <br><br>
                <img src="images/sublogo.jpg" title="광고">
            </div>
            <div class="right">
                <div id = "right-site">
                    <h1><b>오시는길</b></h1><br>

                    
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