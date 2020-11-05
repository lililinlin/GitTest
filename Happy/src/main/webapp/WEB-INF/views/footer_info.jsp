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
    <title>Document</title>
    <style>
        h2,p,h5,h1 {
            font-family: 'Noto Sans KR', sans-serif;
        }
        h1{
            
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
        #yak{
            border: 10px solid rgb(238, 238, 238);
            padding: 20px 20px 20px 20px;
        }

    </style>
</head>

<body>
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
          <br><br><h1><b>개인정보취급방침</b></h2><br><br>
          <div id="yak">
            "해피퍼피""은(는) (이하 "회사"는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.<br>

회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. <br>

회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br>

ο 개인정보취급방침 공고일 : 2020년 11월 26일<br>

ο 본 방침은 : [ 2020년 11월 26일 ] 부터 시행됩니다. <br>

 

개인정보 수집에 대한 동의  <br>

회사는 귀하께서 회사의 개인정보보호방침 또는 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.  <br><br>

 

아동의 개인정보보호 <br><br>

ο 회사는 만14세 미만 아동의 개인정보를 수집하는 경우 법정대리인의 동의를 받습니다. <br>

ο 만14세 미만 아동의 법정대리인은 아동의 개인정보의 열람, 정정, 동의철회를 요청할 수 있으며, 이러한 요청이 있을 경우 회사는 지체없이 필요한 조치를 취합니다.  <br><br>

 

수집하는 개인정보의 항목<br><br>

회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>

ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 직업 , 결혼여부 , 주민등록번호 , 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록
<br>
ο 개인정보 수집방법 : 홈페이지(회원가입, 게시판 등) , 배송 요청  <br><br>

 

개인정보의 수집 및 이용목적<br>

회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>

ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br>

콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송<br>

ο 회원 관리<br>

회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인 , 불만처리 등 민원처리 , 고지사항 전달<br>

ο 마케팅 및 광고에 활용<br>

이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계<br>

단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.  
<br><br>


개인정보의 보유 및 이용기간<br>

ο 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다.
<br>
- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 때<br>

- 대금지급정보의 경우, 대금의 완제일 또는 채권소멸시효기간의 만료된 때<br>

- 배송정보의 경우, 물품 또는 서비스가 인도되거나 제공된 때 (단, 상법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 예외로 합니다.) <br>

ο 위 보유기간에도 불구하고 계속 보유하여야 할 필요가 있을 경우에는 귀하의 동의를 받겠습니다.<br><br> 



개인정보의 파기 절차 및 방법<br>

회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br>

ο 파기절차<br>

회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.<br>

ο 파기방법 <br>

- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. <br><br> 

 

개인정보 제공<br>

회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>

- 이용자들이 사전에 동의한 경우<br>

- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우 <br><br>

 

수집한 개인정보의 위탁<br>

회사는 서비스 향상을 위해서 귀하의 개인정보를 외부에 위탁하여 처리할 수 있습니다. <br>

ο 개인정보의 처리를 위탁하는 경우에는 미리 그 사실을 귀하에게 고지하겠습니다. <br>

ο 개인정보의 처리를 위탁하는 경우에는 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담 등을 명확히 규정하고 당해 계약내용을 서면 또는 전자적으로 보관하겠습니다. <br>

- 위탁 대상자 : [택배사 이름]<br>

- 위탁업무 내용 : [택배사 위탁 내용 ] 예) 물품배송<br>

- 위탁 대상자 : [PG사 이름]<br>

- 위탁업무 내용 : [PG사 위탁 내용] 예) 구매 및 요금 결제 <br><br>

 

이용자 및 법정대리인의 권리와 그 행사항법<br>

이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.<br> 

이용자들의 개인정보 조회,수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.<br> 

혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다. <br>

귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다. <br>

회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 “회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.  <br><br>

 

개인정보보호를 위한 기술적 대책<br>

회사는 귀하의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다. <br>

ο 귀하의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.<br>

ο 회사는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다. <br>

ο 회사는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고 있습니다. <br>

ο 해킹 등에 의해 귀하의 개인정보가 유출되는 것을 방지하기 위해, 외부로부터의 침입을 차단하는 장치를 이용하고 있으며, 각 서버마다 침입탐지시스템을 설치하여 24시간 침입을 감시하고 있습니다.  <br><br>

 

개인정보 자동수집 장치의 설치ㆍ운영 및 그 거부에 관한 사항<br>

회사는 귀하의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 oo의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. <br>

회사는 다음과 같은 목적을 위해 쿠키를 사용합니다. <br>

▶ 쿠키 등 사용 목적 <br>

- 회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공 <br>

귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. <br>

▶ 쿠키 설정 거부 방법 <br>

예: 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. <br>

설정방법 예(인터넷 익스플로어의 경우)<br> 

: 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 <br>

단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.<br><br> 

 

개인정보에 관한 민원서비스<br>

회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.<br>

개인정보관리책임자 성명 : 강이린<br>

전화번호 : 02-2222-2222<br>

이메일 : linlin@naver.com<br>

귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.<br>

기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>

1.개인분쟁조정위원회 (www.1336.or.kr/1336)<br>

2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)<br>

3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)<br>

4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)<br>
          </div>
        </div>
    </main><br><br>
    <div id="footer">
        <footer style="color: white;">
            <br>
            <p><small><a href="footer_yak">이용약관&nbsp;&nbsp;</a> | <a href="footer_info">&nbsp;개인정보취급방침&nbsp;&nbsp;</a> | <a
                        href="footer_email">&nbsp;이메일주소무단수집거부</a><br>
                    서울특별시 노원구 ｜ 전화 : 02-1111-1111 ｜ 팩스 : 02-1111-1111 ｜ 사업자등록번호 : 111-11-11111 ｜ 대표 : 강이린<br>
                    Copyright ⓒ 2019, Seoul Abandoned Animal Adoption Center All rights reserved. This is a nonprofit
                    site.</p></small>
        </footer>
    </div>
</body>

</html>