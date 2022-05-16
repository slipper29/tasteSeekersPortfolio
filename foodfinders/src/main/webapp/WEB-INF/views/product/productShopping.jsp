<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">

    <!-- 3-1. jQueryUI 연결(animate) -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../resources/css/productShopping.css">
</head>
<body>
	<div id="wrap">
			<div class="content">
            <div class="contentIn">
                <ul>
                    <li class="favorites" id="fav"><a href="#">즐겨찾기</a></li>
                    <li><a href="">앱다운로드</a></li>
                    <li><a href="/sub_cscenter">고객센터</a></li>
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
	                       			<a href="/sub_login" onclick="alert('장바구니는 로그인 후 이용하실 수 있습니다.')">장바구니</a>
	                       		</c:otherwise>
                        	</c:choose>
                        </li>
                    </ul>
                </div>
            </div> <!--.gnb_in-->
        </nav> <!--.gnb-->
        
        <div id="container">
        	<div class="main_in">
        		<h1 class="stitle">장바구니</h1>
        		<div class="stitle_small">
        			<p>상품명</p>
        			<p>가격</p>
        			<p>수량</p>
        			<p>합계</p>
        			<p>비고</p>
        		</div>
        		<div class="scontent">
        			<c:forEach items="${slist}" var="content">
        			<div class="sitem">
	        			<p>${content.pname}</p>
	        			<input class="sitemPrice" type=hidden value="${content.pprice}">
	        			<p class="sitemPriceWon">${content.pprice}<span>원</span></p>
	        			<input class="sitemCount" type=hidden value="${content.pcount}">
	        			<p>${content.pcount}</p>
	        			<p class="sitemTotal"></p>
		        		<form action="/product/shoppingDelete" id="sitemForm">
		        			<input type="hidden" name="id" value="${content.id}">
		        			<input type="hidden" name="sno" value="${content.sno}">
		        			<button class="sitemBtn">삭제</button>
	        			</form>
        			</div>
        			</c:forEach>
        		</div>
        		<div class="totalPrice">
        			<p class="tptxt">총 합계 금액</p>
        			<p class="tpPrice"></p>
        		</div>
        		<div class="sorder">
        			<h2>배송지 입력 후 주문하기</h2>
        			<p class="sorderExplanation">(기본배송지가 아닌 경우 변경하여 주문하시면 됩니다.)</p>
        			<form id="orderForm" action="/order" method="post">
        				<label>배송지</label>
        				<c:forEach items="${slist}" var="orders">
        					<input type="hidden" class="address" name="address" value="${orders.address}">
        					<input type="hidden" name="id" value="${orders.id}">
        					<input type="hidden" name="sno" value="${orders.sno}">
        					<input type="hidden" name="pno" value="${orders.pno}">
        					<input type="hidden" name="pname" value="${orders.pname}">
        					<input type="hidden" name="pprice" value="${orders.pprice}">
        					<input type="hidden" name="pcount" value="${orders.pcount}">
        				</c:forEach>
        				<input type="text" id="sorder_add" value="${slist[0].address}">
        			</form>
        			<button id="sbtn">주문하기</button>
        		</div>
        	</div> <!-- .main_in -->
        </div> <!-- #container -->
        
        <footer id="footer">
            <div class="f_menu">
                <ul>
                    <li><a href="">브랜드 스토리</a></li>
                    <li><a href="">서비스 이용약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="/sub_cscenter">고객센터</a></li>
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
	</div> <!-- #wrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../../resources/js/productShopping.js"></script>
</body>
</html>