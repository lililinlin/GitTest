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
    <title>사이트소개</title>
    <style>
        h2 {
            font-family: 'Noto Sans KR', sans-serif;
        }
    /* 헤더 */
        .head {
            margin: 0 auto;
            width: 1200px;
            /* border:1px solid red; */
            height: 100px;
            border-bottom: 2px solid grey;
            margin-bottom: 10px;
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
            text-align: right;
        }
        .mainmenu {
            text-decoration: none;
            color: black;
        }
        .hov {
            background-color: white;
            font-size: 25px;
            width: 100px;
            margin-top: -8px;
            display: none;
            position: absolute;
            list-style-type: none;
            text-decoration: none;
            z-index: 100;
            padding-top: 0px;
            border-top: 2px solid rgb(132, 189, 246);
            border-bottom: 2px solid rgb(132, 189, 246);
            padding-left: 0px;
            margin-left: 110px;
            text-align: center;
        }
        .hov a {
            color: black;
            font-size: 13px;
        }
        .hov:hover ul {
            display: block;
        }

        .hov li:nth-child(n):hover {
            background-color: rgb(132, 189, 246);
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
            height: 110px;
            width: 1200px;
            background-color: #3F3931;
        }
        footer a {
            color: black;
        }
/* 메인 */

        .right{
	        width: 1650px;
            height: 100%;
            margin:20px;
 
        }
        .right img{
            float:right;
        }
        #right-site{
            display:inline-block;
            background-color: rgb(250, 250, 250);
        }
        #right-1{
            background-color: rgb(250, 250, 250);
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
        #introduce_title{
            color: rgb(132, 189, 246);
        }

        /* *{
            border: 1px solid red;
        } */
    </style>
</head>

<body>
    <table class="head">
        <header>

            <tr>
                <td rowspan="2"><a href="home"><img src="images/logo.jpg" id="logo" alt=""></a></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="headerlogtd"><span><a href="login" class="headerlog">로그인<h> | </h></a><a href="join"
                            class="headerlog">회원가입</a></span></td>
            </tr>
            <tr>
                <ul id="menu">
                    <td class="menumaintd">
                        <li><a href="nav1-1_site" class="mainmenu">
                                <h6><b>사이트소개</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav1-1_site">사이트소개</a></li>
                                <li><a href="nav1-2_map">오시는길</a></li>
                            </ul>
                        </li>
                    </td>
                    <td class="menumaintd">
                        <li><a href="nav2-1_adopt" class="mainmenu">
                                <h6><b>입양하기</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav2-1_adopt">입양하기</a></li>
                                <li><a href="nav2-2_adopted">입양됐어요</a></li>
                                <li><a href="nav2-3_review">입양후기</a></li>
                            </ul>
                        </li>
                    </td>
                    <td class="menumaintd">
                        <li><a href="nav3-1_board" class="mainmenu">
                                <h6><b>커뮤니티</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav3-1_board">게시판</a></li>
                                <li><a href="nav3-2_volunteer">자원봉사신청</a></li>
                            </ul>
                        </li>
                    </td>
                    <td class="menumaintd">
                        <li><a href="nav4-1_QnA" class="mainmenu">
                                <h6><b>고객센터</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav4-1_QnA">Q&A</a></li>
                                <li><a href="nav4-2_notice">공지사항</a></li>
                            </ul>
                        </li>
                    </td>
                </ul>
            </tr>

        </header>
    </table>
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
                <img src="images/sublogo.jpg"" title="광고">
            </div>
            <div class="right">
                <div id="right-1">
                    <div id = "right-site">
                        <br>
                        <h4><b>사이트 소개</b></h4><br>
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
                <img src="images/dog_12.jpg" title="소개" id = "imag">
                </div>
                <br>
                <div>
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
    </main>
    <div id="footer">
        <footer style="color: white;">
            <br>
            <p><small><a href="#">이용약관&nbsp;&nbsp;</a> | <a href="#">&nbsp;개인정보취급방침&nbsp;&nbsp;</a> | <a
                        href="#">&nbsp;이메일주소무단수집거부</a><br>
                    서울특별시 노원구 ｜ 전화 : 02-1111-1111 ｜ 팩스 : 02-1111-1111 ｜ 사업자등록번호 : 111-11-11111 ｜ 대표 : 강이린<br>
                    Copyright ⓒ 2019, Seoul Abandoned Animal Adoption Center All rights reserved. This is a nonprofit
                    site.</p></small>
        </footer>
    </div>
</body>

</html>