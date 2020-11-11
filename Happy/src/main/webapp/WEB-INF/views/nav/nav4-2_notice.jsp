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
       
        #right-site{
            display:inline-block;
            background-color: rgb(250, 250, 250);
        }
        #right-1{
            background-color: rgb(250, 250, 250);
        }
       
        #notice_table td,th,a{
            padding-left: 10px;
            border-bottom: 2px solid #e9e9e3;
            height : 80px;
            font-family: 'Noto Sans KR', sans-serif;
            color: black;
        }
        
        small{
            color:  #a2a2a1;
        }
       #notice_table img{
           margin-right: 10px;
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
                <td rowspan="2"><img src="images/logo.jpg" id="logo" alt=""></td>
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
                    <h3 style="text-align: center;">고객센터</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="">Q&A</a></h5><br>
                    <h5><a href="">공지사항</a></h5><br>
                </div>
                <br><br>
                <img src="images/sublogo.jpg" title="광고">
            </div>
            <div class="right">
                <h1><b>공지사항</b></h1><br>
                <table id="notice_table" width="850" cellpadding="0" cellspacing="0" >
                    <tr>    
                        <td><h6><b><img src="images/notice2.jpg">title</b></h6>
                        <small>id | date | hit</small></td>
                    </tr>
                    <tr>    
                        <td><h6><b><img src="images/notice2.jpg">입양/파양관련 공지사항(꼭 먼저 읽어보시고 신청해주세요)</b></h6>
                        <small>해피퍼피관리자 | 2020-11-09 | 100</small></td>
                    </tr>
                    <tr>    
                        <td><h6><b><img src="images/notice2.jpg">구조 관련 Q&A</b></h6>
                        <small>해피퍼피관리자 | 2020-11-11 | 1000</small></td>
                     </tr>
                     <tr>    
                        <td><h6><b><img src="images/notice2.jpg">봉사 관련 Q&A</b></h6>
                        <small>해피퍼피관리자 | 2020-11-11 | 1000</small></td>
                     </tr>
                     <c:forEach var="dto" items="${ listBoard }" >
                     <tr>
                         <td><h6><b><img src="images/notice2.jpg"><a href="content_view?bid=${ dto.bid }">${ dto.btitle }</a></b></h6>
                            <small>${ dto.bname } |
                             <c:forEach begin="1" end="${ dto.bindent }">-</c:forEach>
                             | ${ dto.bdate } |${ dto.bhit }</small></td>
                     </tr>
                     </c:forEach>
            
                    <tr>
                        <td><a href="write_view">글작성</a></td>
                    </tr>
                </table>
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