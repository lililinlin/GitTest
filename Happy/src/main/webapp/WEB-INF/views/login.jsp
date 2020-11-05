<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
    <title>로그인</title>
    <style>
         .head {
            width: auto;
        }
      div{   
          text-align: center;
          margin-top : 100px;
          margin-bottom: -100px;
      }
      input{
          width: 350px;
          height: 60px;
          font-size: 30px;
      }
      button{
        width: 430px;
          height: 60px;
          
      }
      img{
          width: 500px;
          height: 150px;
      }
      .head {
            width: auto;
        }
        #footer {
            text-align: center;
            margin: 0 auto;
            height: 110px;
            width: 1200px;
            background-color: #3F3931;

        }
        #footer a{
          color: white;
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
    </style>
    <script>
        function nwindow(num){
            if(num == 1){
                var url = "findid";
            }
            else if(num == 2){
                var url = "findpw";
            }
            
            window.open(url,"","width=500,height=450,left=600");
        }
    </script>
</head>
<body>
    <table class="head">
        <header>
            
            <tr>
                <td rowspan="2"><a href="Home"><img src="images/logo.jpg" id="logo" alt="ddd"></a></td>
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

    <div>
             <img src="images/logo.jpg">
         <form>
             <br>
             아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id" size="42"><br><br>
             비밀번호&nbsp;&nbsp;<input type="password" name="password" size="42"><br><br><br>
             <button type="button" class="btn btn-primary">로그인</button><br><br><br>
         </form>
         <a href="#" onclick="nwindow(1)">아이디찾기</a> | <a href="#" onclick="nwindow(2)">비밀번호찾기</a> | <a href="join" >회원가입</a>
         <br><br><br><br><br><br><br><br><br>
</div>
</body>
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
</html>