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
    <title>회원가입</title>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
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
              color: white;
        }
 /* 메인 */
        
        #wrapper {
            /* text-align: center; */
            width: 1200px;
            margin: 0 auto;
        }
        h1{
            margin:60px 100px 40px 530px
        }
        table{
            margin: 0 auto;
            margin:20px 100px 100px 320px
        }
        /* *{
            border: 1px solid red;
        } */

    </style>
</head>

<body>
    <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
        $(function(){
            $('#password').keyup(function(){
            $('#chkNotice').html('');
            });

            $('#passwordcherk').keyup(function(){

                if($('#password').val() != $('#passwordcherk').val()){
                $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
                $('#chkNotice').attr('color', '#f82a2aa3');
                } else{
                $('#chkNotice').html('비밀번호 일치함<br><br>');
                $('#chkNotice').attr('color', '#199894b3');
                }

            });
        });
    </script>
    <table class="head">
        <header>

            <tr>
                <td rowspan="2"><a href="Home"><img src="images/logo.jpg" id="logo" alt=""></a></td>
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
        <div id="wrapper">
            <h1>회원가입</h1>
            <form>
                <table>
                   <tr>
                       <td>아이디</td>
                       <td><input type="text" name="id" size="46"></td>
                       <td> &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary">중복확인</button></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>비밀번호</td>
                       <td><input type="password" id="password"name="password" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>비밀번호확인&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       <td><input type="password" id="passwordcherk" name="passwordcherk" size="46"></td>
                       <tr><td><td><br><h6 id="chkNotice" size="2"></h6></td></td></tr>
                   </tr>
                   <tr>
                       <td>이름</td>
                       <td><input type="text" name="name" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>전화번호</td>
                       <td><input type="text" name="phone" size="46"></td>
                       <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>생년월일</td>
                       <td><input type="text" name="birth_year" size="10" placeholder="4자리">&nbsp;년&nbsp;
                           						<select name="birth_month">
							<option value=""> </option>
							<option value="01" >1</option>
							<option value="02" >2</option>
							<option value="03" >3</option>
							<option value="04" >4</option>
							<option value="05" >5</option>
							<option value="06" >6</option>
							<option value="07" >7</option>
							<option value="08" >8</option>
							<option value="09" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
						</select>&nbsp;월&nbsp;
                           <input type="text" name="birth_day" size="8">&nbsp;일</td>
                           <tr><td><br></td></tr>
                   </tr>
                   <tr>
                       <td>주소</td>
                       <td><input type="text" id="sample6_postcode" placeholder="우편번호">
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                        <input type="text" id="sample6_address" placeholder="주소"><br><br>
                        <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                        <input type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
                   </tr>
                   <tr><td><br></td></tr>
                   <tr><td></td><td><button type="button" class="btn btn-primary" style="width: 370px;">확인</button></td></tr>
   
                </table>
               
   
               
               </form>
            
            
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