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
    <title>입양 됐어요 </title>
    <style>
        h2 {
            font-family: 'Noto Sans KR', sans-serif;
        }

        #footer {
            text-align: center;
            margin: 0 auto;
            height: 110px;
            width: 1200px;
            background-color: #3F3931;

        }

        table {
            margin: 0 auto;
            width: 1200px;
            /* border:1px solid red; */
            height: 100px;
            border-bottom: 2px solid grey;
            margin-bottom: 10px;
        }

        .headerlogtd {
            text-align: right;
            vertical-align: bottom;
        }

        #logo {
            width: 400px;
            height: 100px;
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

        .head {
            width: auto;
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

        .mainmenu {
            text-decoration: none;
            color: black;
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
        /* *{
            border: 1px solid red;
        } */
    </style>
</head>

<body>
    <table class="head">
        <header>

            <tr>
                <td rowspan="2"><a href="home.html"><img src="images/logo3.jpg" id="logo" alt=""></a></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="headerlogtd"><span><a href="login.html" class="headerlog">로그인<h> | </h></a><a href="join.html"
                            class="headerlog">회원가입</a></span></td>
            </tr>
            <tr>
                <ul id="menu">
                    <td class="menumaintd">
                        <li><a href="nav1-1_site.html" class="mainmenu">
                                <h6><b>사이트소개</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav1-1_site.html">사이트소개</a></li>
                                <li><a href="nav1-2_map.html">오시는길</a></li>
                            </ul>
                        </li>
                    </td>
                    <td class="menumaintd">
                        <li><a href="nav2-1_adopt.html" class="mainmenu">
                                <h6><b>입양하기</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav2-1_adopt.html">입양하기</a></li>
                                <li><a href="nav2-2_adopted.html">입양됐어요</a></li>
                                <li><a href="nav2-3_review.html">입양후기</a></li>
                            </ul>
                        </li>
                    </td>
                    <td class="menumaintd">
                        <li><a href="nav3-1_board.html" class="mainmenu">
                                <h6><b>커뮤니티</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav3-1_board.html">게시판</a></li>
                                <li><a href="nav3-2_volunteer.html">자원봉사신청</a></li>
                            </ul>
                        </li>
                    </td>
                    <td class="menumaintd">
                        <li><a href="nav4-1_QnA.html" class="mainmenu">
                                <h6><b>고객센터</b></h6>
                            </a>
                            <ul class="hov">
                                <li><a href="nav4-1_QnA.html">Q&A</a></li>
                                <li><a href="nav4-2_notice.html">공지사항</a></li>
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
                    <h3 style="text-align: center;">커뮤니티</h3>
                </div>
                <div class="site_int">
                    <br>
                    <h5><a href="nav2-1_adopt.html">게시판</a></h5><br>
                    <h5><a href="nav2-2_adopted.html">자원봉사신청</a></h5><br>
                </div>
                <br><br>
                <img src="images/sublogo.jpg"" title="광고">
            </div>
            <div class="right">
                <div id = "site">
                    <br>
                    <h1>자원봉사신청</h1>
                  
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