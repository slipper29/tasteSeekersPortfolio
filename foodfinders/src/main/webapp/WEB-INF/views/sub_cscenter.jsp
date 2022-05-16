<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">

    <!-- 3-1. jQueryUI 연결(animate) -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">

    <!-- 1. 작업한 css -->
    <link rel="stylesheet" href="../../resources/css/sub_cscenter.css">
</head>

<body>
    <div id="wrap">
        <div class="content">
            <div class="contentIn">
                <ul>
                    <li class="favorites" id="fav"><a href="#">즐겨찾기</a></li>
                    <li><a href="">앱다운로드</a></li>
                    <li><a href="sub_cscenter">고객센터</a></li>
                </ul>
            </div>
        </div> <!--.content-->
        
        <header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="/">맛찾사</a></h1>
                <c:if test="${session != null}">
                	<p class="loginName"><span>${session.name}</span>님 환영합니다.</p>
                	<c:if test="${session.adminCheck}">
                		<p class="adminPage"><a href="/adMain">관리자페이지로 이동하기</a></p>
                	</c:if>
                </c:if>
            </div> <!--.headerIn-->
        </header> <!--#header-->
        <nav class="gnb">
            <div class="g_sub">
                <ul>
                    <li>
                        <a href="/product/list?pcategory=농산">농산물</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=과일">과일</a></li>
                            <li><a href="/product/list?pcategory=채소">채소</a></li>
                            <li><a href="/product/list?pcategory=잡곡">잡곡/혼합곡</a></li>
                            <li><a href="/product/list?pcategory=견과류">견과류</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=수산">수산물</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=해산물">해산물/어패류</a></li>
                            <li><a href="/product/list?pcategory=생선">생선</a></li>
                            <li><a href="/product/list?pcategory=건어물">건어물</a></li>
                            <li><a href="#">젓갈</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=축산">축산물</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=소고기">쇠고기</a></li>
                            <li><a href="/product/list?pcategory=돼지고기">돼지고기</a></li>
                            <li><a href="/product/list?pcategory=양고기">양고기</a></li>
                            <li><a href="/product/list?pcategory=축산가공식품">축산가공식품</a></li>
                            <li><a href="/product/list?pcategory=알류">알류</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=김치">김치</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=포기김치">포기김치</a></li>
                            <li><a href="/product/list?pcategory=갓김치">갓김치</a></li>
                            <li><a href="/product/list?pcategory=총각김치">총각김치</a></li>
                            <li><a href="/product/list?pcategory=파김치">파김치</a></li>
                            <li><a href="/product/list?pcategory=묵은지">묵은지</a></li>
                            <li><a href="/product/list?pcategory=절임배추">절임배추</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=반찬">반찬</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=절임류">절임류</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=가공식품">가공식품</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=장류">장류</a></li>
                            <li><a href="/product/list?pcategory=소스">소스</a></li>
                            <li><a href="/product/list?pcategory=수산가공식품">수산가공식품</a></li>
                            <li><a href="/product/list?pcategory=떡">떡</a></li>
                            <li><a href="/product/list?pcategory=두유">두유</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=건강식품">건강식품</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=건강즙">건강즙</a></li>
                            <li><a href="/product/list?pcategory=과일즙">과일즙</a></li>
                            <li><a href="/product/list?pcategory=한방재료">한방재료</a></li>
                            <li><a href="/product/list?pcategory=건강분말">건강분말</a></li>
                            <li><a href="/product/list?pcategory=건강음료">건강음료</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=다이어트식품">다이어트식품</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=곤약">곤약</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=냉동식품">냉동/간편식품</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=즉석국">즉석국/즉석탕</a></li>
                            <li><a href="/product/list?pcategory=만두">만두</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/product/list?pcategory=음료/간식">음료/간식</a>
                        <ul class="g_list">
                            <li><a href="/product/list?pcategory=김부각">김부각</a></li>
                            <li><a href="/product/list?pcategory=차류">차류</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="gnb_in">
                <div class="g_menu">
                    <ul>
                        <li class="menu">
                            <a href="#">
                                <span class="menu_box">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>전체메뉴
                            </a>
                        </li>
                        <li><a href="">추천</a></li>
                        <li><a href="">꿀맛레시피</a></li>
                        <li><a href="">기획전</a></li>
                        <li><a href="sub_ev">이벤트</a></li>
                        <li><a href="">맛찾사소개</a></li>
                    </ul>
                </div><!--.g_menu-->
                <div class="search">
                    <form id="searchForm" action="/product/list">
                        <fieldset>
                            <legend>상품검색</legend>
                            <input type="text" class="h_input_text" id="keyword" name="keyword" value="${pageMaker.cri.keyword}">
                            <input type="button" class="h_submit" id="searchbtn">
                        </fieldset>
                    </form>
                </div>
                <div class="util">
                    <ul>
                        <li class="h_login"><a href="sub_login">로그인</a></li>
                        <li class="h_delivery"><a href="">주문조회</a></li>
                        <li class="h_cart">
                        	<c:choose>
	                       		<c:when test="${session != null}">
		                        	<a href="/product/shopping?id=${session.id}">장바구니</a>
	                       		</c:when>
	                       		<c:otherwise>
	                       			<a href="sub_login" onclick="alert('장바구니는 로그인 후 이용하실 수 있습니다.')">장바구니</a>
	                       		</c:otherwise>
                        	</c:choose>
                        </li>
                    </ul>
                </div>
            </div> <!--.gnb_in-->
        </nav> <!--.gnb-->

        <!-- 임의 배치 일부 수정
        공지사항 제거 (footer에 있음, 고객센터 들어가도 있음)
        목록을 한 줄로.
        마이페이지 제거(로그인 하면 보여야 하는 것) -->

        <div id="container">
            <div class="main_in">
                <div class="home">
                    <ol>
                        <li>홈</li>
                        <li>고객센터</li>
                    </ol>
                </div>
                <div class="main_box">
                    <div class="boxL">
                        <h2>고객센터</h2>
                        <ul>
                            <li><a href="">공지사항</a></li>
                            <li><a href="">1:1 문의</a></li>
                            <li><a href="">자주 묻는 질문</a></li>
                        </ul>
                        <div class="cs_center">
                            <h4>고객 상담 센터</h4>
                            <p>
                                <span class="point">010-3142-3135</span><br>
                                foodfinders@naver.com<br>
                                월 ~ 금 AM 10:00 ~ PM 05:30<br>
                                점심시간 PM 12:00 ~ PM 01:00
                            </p>
                        </div>
                        <div class="bank_account">
                            <h4>은행 계좌 안내</h4>
                            <p>
                                06809631604018<br>
                                기업은행<br>
                                [예금주 : 주식회사 맛찾사]
                            </p>
                        </div>

                    </div> <!--.boxL-->
                    <div class="boxR">
                        <div class="qna_box">
                            <div class="qna_search">
                                <h3>무엇을 도와드릴까요?</h3>
                                <form action="">
                                    <fieldset>
                                        <legend>상품검색</legend>
                                        <input type="text" class="qna_text" placeholder="궁금한 점을 검색해보세요">
                                        <input type="button" class="qna_submit" value="검색">
                                    </fieldset>
                                </form>
                            </div> <!--.qna_search-->
                            <div class="qna_etc">
                                <p>찾으시는 질문이 없다면?</p>
                                <button class="inquiry_btn">1:1 문의하기</button>
                            </div> <!--.qna_etc-->
                        </div> <!--.qna_box-->
                        <div class="best_qna">
                            <h3>자주 묻는 질문</h3>
                            <ul>
                                <li>
                                    <p class="question"><span class="upper">Q.</span> 상품이 파손되어 왔어요. 어떻게 해야하나요?</p>
                                    <p class="answer">
                                        <span class="upper">A.</span>
                                        상품출고일로부터 1일 경과 후 수령을 하였는데도 파손일 경우,<br>
                                        고객센터(010-3142-3135)로 연락을 주시거나 '네이버톡톡' 혹은 '1:1문의하기'로 문의주시면 확인 후 빠른처리 도와드리겠습니다. 
                                    </p>
                                </li>
                                <li>
                                    <p class="question"><span class="upper">Q.</span> 배송은 언제되나요?</p>
                                    <p class="answer">
                                        <span class="upper">A.</span>
                                        본 쇼핑몰은 토,일을 포함한 공휴일을 제외하고 오전9시 이전 주문 건에 대해서는 당일출고를 원칙으로 하고 있습니다.<br>
                                        당일출고가 어려울 경우 고객님께 별도의 안내를 드립니다.
                                    </p>
                                </li>
                                <li>
                                    <p class="question"><span class="upper">Q.</span> 배송 전 주문 취소의 경우 어떻게 해야하나요?</p>
                                    <p class="answer">
                                        <span class="upper">A.</span>
                                        본 쇼핑몰은 오전9시 이전의 주문 건에 대해서는 당일출고를 원칙으로 하고 있습니다.<br>
                                        오전9시 이후에 주문취소요청을 하셔도 송장만 기입되지 않고 실제로 배송이 되었을 경우에는 취소가 불가합니다.<br>
                                        다만, 확인 후 실제로 배송이 안되었을 경우에는 확인 후 처리해드립니다.
                                    </p>
                                </li>
                                <li>
                                    <p class="question"><span class="upper">Q.</span> 주문을 취소하고 싶은데 이미 상품이 배송중일 경우 어떻게 해야하나요?</p>
                                    <p class="answer">
                                        <span class="upper">A.</span>
                                        이미 배송중인 상품에 대해서는 이유불문 주문취소가 불가하며 식품 특성상 교환이나 반품도 불가합니다.<br>
                                        주문하시기 전에 일정확인을 해주시길 부탁드립니다.
                                    </p>
                                </li>
                                <li>
                                    <p class="question"><span class="upper">Q.</span> 반품 및 교환하고 싶은데 절차가 어떻게 되나요?</p>
                                    <p class="answer">
                                        <span class="upper">A.</span>
                                        식품 특성상 맛,개인사정 등의 단순변심 사유로는 반품 및 교환이 불가합니다.<br>
                                        다만, 배송간에 발생한 파손이나 배송 지연에 따른 변질의 경우에는 확인 후 바로 사진을 찍으셔서 고객센터 혹은 '네이버톡톡','1:1문의하기'를 통해 문의주시면 확인 후 빠른처리 도와드리겠습니다.
                                    </p>
                                </li>
                            </ul>
                        </div> <!--.best_qna-->
                        <div class="best_notice">
                            <h3>공지사항</h3>
                            <ul>
                                <li class="point">
                                    <a href="#">서버 이전 안내</a>
                                </li>
                                <li class="point">
                                    <a href="#">상품 리뷰 작성시 마일리지 지급 안내</a>
                                </li>
                                <li>
                                    <a href="#">설날 전 마지막 발송 안내</a>
                                    <a href="#">2022.01.24</a>
                                </li>
                                <li>
                                    <a href="#">12월 25일 크리스마스 연휴로 인한 배송불가 안내</a>
                                    <a href="#">2021.12.23</a>
                                </li>
                                <li>
                                    <a href="#">추석 연휴 마지막 배송 일정 안내</a>
                                    <a href="#">2021.09.13</a>
                                </li>
                            </ul>
                        </div> <!--.best_notice-->
                    </div> <!--.boxR-->
                </div>
                <!--.main_box-->
            </div> <!--.main_in-->
        </div> <!--.container-->

        <footer id="footer">
            <div class="f_menu">
                <ul>
                    <li><a href="">브랜드 스토리</a></li>
                    <li><a href="">서비스 이용약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="sub_cscenter">고객센터</a></li>
                </ul>
            </div> <!--.f-menu-->
            <div class="f_in">
                <div class="f_bottom">
                    <div class="f-info">
                        상호명 : (주)맛찾사<span></span>대표 : 조태연<span></span>사업자번호 : 351-87-01607<span></span>통신판매업신고 : 제 2020-서울서초-1961호<span></span>개인정보관리책임 : 조태연<br>
                        주소 : 서울특별시 서초구 사평대로 335 (금성빌딩) 501-51호<br>
                        대표번호 : 010-3142-3135<span></span>이메일 : foodfinders@naver.com<br>
                    </div> <!--.f-info-->
                    <div class="copyright">
                        COPYRIGHT (C) (주)맛찾사. ALL RIGHTS RESERVED. HOSTING BY NHN GODO. DESIGN BY DESIGNWIB
                    </div>
                    <div class="f_sns">
                        <ul>
                            <li class="fb"><a href="">페이스북 바로가기</a></li>
                            <li class="ins"><a href="">인스타그램 바로가기</a></li>
                            <li class="ytb"><a href="">유튜브 바로가기</a></li>
                        </ul>
                    </div>
                </div> <!--.f-bottom-->
            </div> <!--.f-in-->

            <div class="top">
                <ul>
                    <li class="t_logo">맛찾사</li>
                    <li class="t_log">
                    	<c:choose>
                    	<c:when test="${session == null}">
	                    	<a href="sub_login">로그인</a>
                    	</c:when>
                    	<c:when test="${session != null}">
	                    	<a href="/member/logout">로그아웃</a>
                    	</c:when>
                    	</c:choose>
                    </li>
                    <li class="t_ev"><a href="sub_ev">이벤트</a></li>
                    <li class="t_viewed"><a href="">최근 본 품목</a></li>
                    <li class="t_cart">
                    	<c:choose>
                       		<c:when test="${session != null}">
	                        	<a href="/product/shopping?id=${session.id}">장바구니</a>
                       		</c:when>
                       		<c:otherwise>
                       			<a href="sub_login" onclick="alert('장바구니는 로그인 후 이용하실 수 있습니다.')">장바구니</a>
                       		</c:otherwise>
                        </c:choose>
                    </li>
                    <li class="t_top"><a href="">TOP</a></li>
                </ul>
            </div><!--.top -->
        </footer> <!--#footer-->
    </div> <!--#wrap-->

    <!-- 3. jQuery 연결 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    
    <!-- js -->
    <script src="../../resources/js/sub_cscenter.js"></script>
</body>
</html>