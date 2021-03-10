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
 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>메인페이지</title>
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

/* header */

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

/* main */

	#wrapper {
		text-align: center;
		width: 1200px;
		margin: 0 auto;
	}
	#main_bottom {
		text-align: center;
	}
	.prices {
		width: 1200px;
		display: flex;
		text-align: center;
	}
	.price-item {
		border-radius: 1rem;
		text-align: center;
		margin: 10px 10px 50px 10px;
		background-color: rgb(250, 250, 250);
	}
	.prices-item-price {
		font-size: 2.5rem;
		font-weight: bold;
		padding: 20px;
	}
	.p-button {
		padding: .5rem 1rem;
		font-size: 1.25rem;
		line-height: 1.5;
		border-radius: 0.3rem;
		background-color: rgb(29, 95, 142);
		background-image: none;
		border-color: #b2b2a2;
		color: white;
		width: 370px;
		height: 80px;
	}
	.c-button {
		position: absolute;
		bottom: 50px;
		left: 525px;
		width: 150px;
		height: 60px;
		z-index: 100;
		background-color: transparent !important;
		background-image: none !important;
		border: 0.5px solid white;
		border-radius: 0.2rem;
		color: #FFFFFF;
		padding-bottom: 0px;
		margin-bottom: 0px;
	}
	.exp {
		position: absolute;
		top: 40%;
		left: 50%;
		transform: translate(-50%, -50%);
		font-size: 5rem;
		color: white;
		z-index: 2;
		text-align: center;
	}
	.slider {
		padding-bottom: 0px;
		margin-bottom: 0px;
	}
	.main_image {
		height: 250px;
		width: 380px;
	}
	.slide-img {
		width: 1200px;
		height: 500px;
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
/* footer */
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
	               yPosition = $win.scrollTop() + 100; //이부분을 조정해서 화면에 보이도록 맞추세요 
	               if (yPosition < 0) { 
	                  yPosition = 0; 
	               } 
	               $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
	         }); 
	      }); 
	   </script>
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
		<div id="wrapper">
			<div class="bxslider">
				<div class="slider">
					<img class="slide-img" src="images/catndog.jpg" title="슬라이더1">
					<div class="exp">
						<h1>또 하나의 가족</h1>
						<h3>사지말고 입양해요</h3>
					</div>
					<input class="c-button" type="button"
						onclick="location.href='nav2-1_adopt'" value="입양하기">
				</div>
				<div>
					<img class="slide-img" src="images/doghand.jpg" title="슬라이더2">
					<div class="exp">
						<h1>또 하나의 가족</h1>
						<h3>가족이 된 아이들의 소식을 전해주세요</h3>
					</div>
					<input class="c-button" type="button"
						onclick="location.href='nav2-3_review'" value="입양후기">
				</div>
				<div>
					<img class="slide-img" src="images/sky2.jpg" title="슬라이더3">
					<div class="exp">
						<h1>후원해요</h1>
						<h2>신한 해피퍼피 110-234-123456</h2>
					</div>

				</div>

			</div>
			<div class="prices">
				<div class="price-item">
					<div class="price-item-title">
						<img class="main_image" src="images/dog1.jpg">
					</div>
					<div class="price-item-price">
						<br>
						<h3>
							<b>입양센터 소식</b>
						</h3>
						<br>
						<p>귀여운 센터 아이들의 모습, 보도자료, 반려동물<br> 관련 행사소식 등을 전해드립니다</p>
						<br> <input class="p-button" type="button"
							onclick="location.href='nav2-1_adopt'" value="입양하기"
							style="margin-bottom: 20px;"><br>

 
					</div>
				</div>
				<div class="price-item">
					<div class="price-item-title">
						<img class="main_image" src="images/adopt2.jpg">
					</div>
					<div class="price-item-price"> 
						<br>
						<h3>
							<b>소통해요</b>
						</h3>
						<br>
						<p>회원들이 서로 소통하는 공간입니다.<br> 회원가입 후 이용해주세요.</p>
						<br> <input class="p-button" type="button"
							onclick="location.href='nav3-1_board'" value="커뮤니티"
							style="margin-bottom: 20px;"><br>
					</div>
				</div>
				<div class="price-item">
					<div class="price-item-title">
						<img class="main_image" src="images/logo.jpg">
					</div> 
					<div class="price-item-price">
						<br>
						<h3>
							<b>봉사해요</b>
						</h3>
						<br>
						<p>동물과 공존하는 행복한 세상!<br> 여러분의 관심과 사랑이 함께하면 현실이 됩니다.</p>
						<br> <input class="p-button" type="button"
							onclick="location.href='nav3-1_board'" value="봉사신청"
							style="margin-bottom: 20px;"><br>
					</div>
				</div>
			</div>
			<script src="js/jquery-2.2.4.min.js"></script>
			<script src="js/jquery.bxslider.js"></script>
			<script>
				$(function() {
					$('.bxslider').bxSlider({

						slideWidth : 2000,
						caption : true,//주석 이미지 title내용이 나옴.
						auto : true,//자동재생
						autoControls : false,//start/stop 버튼사용
						stopAutoOnClick : true,
						mode : "horizontal",//vertical(아래에서 위로 올라감), fade(위 아래 변화없이 서서히 바뀜) 전환효과
						speed : 500,//슬라이딩 속도
						adaptiveHeight : false,//이미지 높이에 따라 슬라이드 높이 결정
						touchEnabled : true,//터치 스와이프 사용 결정 이미지를 잡아서 옆으로 넘길 수 있다
						controls : false,//Prev,Next 버튼 사용여부
						prevText : "Prev", //이전버튼문구
						nextText : "Next",//다음버튼 문구
						touchEnabled : false,
						autoHover : true
					//마우스 올리면 일시 정지

					});
				});
			</script>
		</div>
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