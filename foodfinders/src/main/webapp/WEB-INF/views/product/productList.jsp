<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">

    <!-- 3-1. jQueryUI 연결(animate) -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../resources/css/productList.css">
</head>
<body>
<!--  ${pageMaker}-->
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
            <h1 class="product_title">${plist[1].pmaincategory}</h1>
            <div class="product_tap">
                <ul>
                	<li><a href="/product/list?pcategory=${plist[1].pmaincategory}">${plist[1].pmaincategory}전체</a></li>
            
                    <c:choose>
                    	<c:when test="${plist[1].pmaincategory == '농산'}">
	                    	<li><a href="/product/list?pcategory=과일">과일</a></li>
	                    	<li><a href="/product/list?pcategory=채소">채소</a></li>
	                    	<li><a href="/product/list?pcategory=잡곡">잡곡</a></li>
	                    	<li><a href="/product/list?pcategory=견과류">견과류</a></li>
                    	</c:when>
                    	<c:when test="${plist[1].pmaincategory == '수산'}">
	                    	<li><a href="/product/list?pcategory=해산물">해산물</a></li>
	                    	<li><a href="/product/list?pcategory=생선">생선</a></li>
	                    	<li><a href="/product/list?pcategory=건어물">건어물</a></li>
	                    	<li><a href="/product/list?pcategory=젓갈">젓갈</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '축산'}">
	                    	<li><a href="/product/list?pcategory=소고기">소고기</a></li>
	                    	<li><a href="/product/list?pcategory=돼지고기">돼지고기</a></li>
	                    	<li><a href="/product/list?pcategory=양고기">양고기</a></li>
	                    	<li><a href="/product/list?pcategory=축산가공식품">축산가공식품</a></li>
	                    	<li><a href="/product/list?pcategory=알류">알류</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '김치'}">
	                    	<li><a href="/product/list?pcategory=포기김치">포기김치</a></li>
	                    	<li><a href="/product/list?pcategory=갓김치">갓김치</a></li>
	                    	<li><a href="/product/list?pcategory=총각김치">총각김치</a></li>
	                    	<li><a href="/product/list?pcategory=파김치">파김치</a></li>
	                    	<li><a href="/product/list?pcategory=묵은지">묵은지</a></li>
	                    	<li><a href="/product/list?pcategory=절임배추">절임배추</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '반찬'}">
	                    	<li><a href="/product/list?pcategory=절임류">절임류</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '가공식품'}">
	                    	<li><a href="/product/list?pcategory=장류">장류</a></li>
	                    	<li><a href="/product/list?pcategory=소스">소스</a></li>
	                    	<li><a href="/product/list?pcategory=수산가공식품">수산가공식품</a></li>
	                    	<li><a href="/product/list?pcategory=떡">떡</a></li>
	                    	<li><a href="/product/list?pcategory=두유">두유</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '건강식품'}">
	                    	<li><a href="/product/list?pcategory=건강즙">건강즙</a></li>
	                    	<li><a href="/product/list?pcategory=과일즙">과일즙</a></li>
	                    	<li><a href="/product/list?pcategory=한방재료">한방재료</a></li>
	                    	<li><a href="/product/list?pcategory=건강분말">건강분말</a></li>
	                    	<li><a href="/product/list?pcategory=건강음료">건강음료</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '다이어트식품'}">
	                    	<li><a href="/product/list?pcategory=곤약">곤약</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '냉동식품'}">
	                    	<li><a href="/product/list?pcategory=즉석국">즉석국</a></li>
	                    	<li><a href="/product/list?pcategory=만두">만두</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '냉동식품'}">
	                    	<li><a href="/product/list?pcategory=즉석국">즉석국</a></li>
	                    	<li><a href="/product/list?pcategory=만두">만두</a></li>
                    	</c:when>
                    	<c:when test="${plist[0].pmaincategory == '음료/간식'}">
	                    	<li><a href="/product/list?pcategory=김부각">김부각</a></li>
	                    	<li><a href="/product/list?pcategory=차류">차류</a></li>
                    	</c:when>
                    </c:choose>
                </ul>
            </div>
            <div>
                <ul class="product_itemBox">
                	<c:forEach items="${plist}" var="product">
	                    <li class="product_item">
	                    <input type="hidden" class="pno" value="${product.pno}">
	                        <a href="/product/detail?pno=${product.pno}">
	                            <div class="product_img">
	                                <!--  <img src="../resources/img/notReady_img.png" alt="testImg">-->
	                            </div>
	                            <p class="name">${product.pname}</p>
	                            <p class="price">${product.pprice}<span>원</span></p>
	                        </a>
	                    </li>
                    </c:forEach>
                </ul>
            </div>
	            <form id="pageForm" action="/product/list">
		            <input type="hidden" id="pagenum" name="pagenum" value="${pageMaker.cri.pagenum}">
					<input type="hidden" id="amount" name="amount" value="${pageMaker.cri.amount}">
					<c:choose>
						<c:when test="${pageMaker.cri.keyword == null}">
							<input type="text" id="pcategory" name="pcategory" value="">
						</c:when>
						<c:otherwise>
							<input type="text" id="keyword" name="keyword" value="${pageMaker.cri.keyword}">
						</c:otherwise>
					</c:choose>
		            <div class="page_btn">
		            <c:set var="text" value="${fn:split(plist[1].pcategory,'_')[0]}" />
		            	<c:choose>
		            		<c:when test="${pageMaker.cri.keyword == null}">
		            			<p><a class="pageBtn" href="/product/list?pagenum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&pcategory=${text}">이전</a></p>
			                	<!-- <p><a href="#">이전</a></p> -->
			                	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<a class="pageNo" href="${num}">${num}</a>
								</c:forEach>
			                	<p><a class="pageBtn" href="/product/list?pagenum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&pcategory=${text}">다음</a></p>
		            		</c:when>
		            		<c:otherwise>
		            			<p><a href="/product/list?pagenum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&keyword=${pageMaker.cri.keyword}">이전</a></p>
			                	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
									<a class="pageNo" href="${num}">${num}</a>
								</c:forEach>
			                	<p><a href="/product/list?pagenum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&keyword=${pageMaker.cri.keyword}">다음</a></p>
		            		</c:otherwise>
		            		
		            	</c:choose>
		            </div>
	            </form>
            <!--  ${plist}-->
            
            </div>
        </div> <!--#container-->
        
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
    </div> <!--#wrap-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../../resources/js/productList.js"></script>
    <!-- 파일 첨부 관련 JS -->
    <script src="../resources/js/attach.js"></script>
</body>
</html>