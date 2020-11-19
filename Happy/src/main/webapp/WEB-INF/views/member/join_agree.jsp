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
    
    <title>회원가입</title>
    <script 
        src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous">
    </script>
    <style>
         a:link { text-decoration: none;}
         /* a:visited { color: rgb(168, 40, 40); text-decoration: none;} */
         a:hover { text-decoration: none;}

h2 {
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
        #mid{
            font-family: 'Noto Sans KR';
            width:1200px;
            margin:0 auto;
        }
        #form1{
            margin:20px 0px 20px 0px;
        }
        input[type="checkbox"]{
            width:20px;
            height:20px;
        }
        input[type="submit"],input[type="reset"]{
            width:100px;
            height:50px;
        }
        #bottom_button{
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
        <br>
        <form action="join" id="form1">
            <div id = "mid">
                <h1><b>약관동의</b></h1>
                
                <hr><br>
                
                <h5>해피퍼피 이용약관 동의(필수)&nbsp;<input type="checkbox" name="c1" id="c1"/></h5>
                <textarea readonly="readonly" rows="5" cols="145">
제 1 조 (목적)
                    
이 약관은 해피퍼피가 제공하는 해피퍼피 및 해피퍼피 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                             
제 2 조 (정의)
                    
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 해피퍼피 및 해피퍼피 관련 제반 서비스를 의미합니다.
②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 
                </textarea><br><br><br>
                <h5>개인정보 수집 및 이용에 대한 안내(필수)&nbsp;<input type="checkbox" name="c2" id="c2"/></h5>
                <textarea readonly="readonly" rows="5" cols="145">

정보통신망법 규정에 따라 해피퍼피에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
                                  
1. 수집하는 개인정보
                    
이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 해피퍼피 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 해피퍼피는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                 </textarea><br><br><br>
                 <h5>위치정보 이용약관 동의(선택)&nbsp;<input type="checkbox" name="c3" id="c3"/></h5>
                 <textarea readonly="readonly" rows="5" cols="145">
위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 해피퍼피 위치기반 서비스를 이용할 수 있습니다.
                                
제 1 조 (목적)
이 약관은 해피퍼피 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                    
                    
제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보취급방침, 회사가 별도로 정한 지침 등에 의합니다.
                    
                    
제 3 조 (서비스 내용 및 요금)
①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다. 1.Geo Tagging 서비스: 게시글 등록 시점의 개인위치정보주체의 위치정보를 게시글과 함께 저장합니다.
2.위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(맛집, 주변업체, 교통수단 등)를 제시합니다.
3.위치정보를 활용한 친구찾기 및 친구맺기: 현재 위치를 활용하여 친구를 찾아주거나 친구를 추천하여 줍니다.
4.연락처 교환하기: 위치정보를 활용하여 친구와 연락처를 교환할 수 있습니다.
5.현재 위치를 활용한 광고정보 제공 서비스: 광고정보 제공 요청 시 개인위치정보주체의 현 위치를 이용하여 광고소재를 제시합니다.
6. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
                </textarea><br><br>
                <div id="bottom_button">
                <h5>모두 동의합니다.&nbsp;<input type="checkbox" name="all" id="all"></h5><br>
                <input class="btn btn-dark"  type="submit" value="동의">&nbsp;<input class="btn btn-dark"  type="reset" value="비동의"><br><br>
            </div> </div>      
        </form>
        <script>
            var doc = document; 
            var form1 = doc.getElementById('form1'); 
            var inputs = form1.getElementsByTagName('INPUT'); 
            var form1_data = {
            "c1": false,  //전체 선택
            "c2": false,  //필수 선택 1
            "c3": false   //필수 선택 2
            }; 
            
            var c1 = doc.getElementById('c1'); 
            var c2 = doc.getElementById('c2'); 
            var c3 = doc.getElementById('c3'); 
            
            function checkboxListener() {
            form1_data[this.name] = this.checked; //각각 자신의 checkBox를 Checked 상태로 바꿈 
            }
            
            
            c1.onclick = c2.onclick = c3.onclick = checkboxListener;   //c1, C2, C3를 checkBoxListenner를 호출하여
                                                                            //Checked로 바꿈
            var all = doc.getElementById('all');  //전체 체크를 위한 체크박스 선언
            
            all.onclick = function() {  //전체 체크를 누를 시
                if (this.checked) {
                setCheckbox(form1_data, true);   //form1_data(c1,c2,c3)의 값을 모두 Checked로 바꿈
                } else {
                setCheckbox(form1_data, false);  ////form1_data(c1,c2,c3)의 값을 모두 no checked로 바꿈
                }
            }; 
            
            
            function setCheckbox(obj, state) { //checkbox상태 변경하는 함수
                for (var x in obj) {
                obj[x] = state; 
            
                for(var i = 0; i < inputs.length; i++) {
                if(inputs[i].type == "checkbox") {
                inputs[i].checked = state; 
                }
                }
            
                }
            }
            
            form1.onsubmit = function(e) {
            e.preventDefault();
            
            if ( !form1_data['c1'] ) {
                alert('이용동의 약관에 동의하지 않았습니다.');  
                return false; 
            }
            
            if ( !form1_data['c2'] ) {
                alert('개인정보 수집 및 이용에 대한 안내를 동의하지 않았습니다.'); 
                return false; 
            }
            
            this.submit(); 
            }; 
        </script>
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