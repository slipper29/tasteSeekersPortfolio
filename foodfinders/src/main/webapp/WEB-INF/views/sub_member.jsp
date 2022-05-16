<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">
    <title>회원가입</title>
    <!-- 3-1. jQueryUI 연결(animate) -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../../resources/css/sub_member.css">
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

        <div id="container">
            <div class="main_in">
                <div class="home">
                    <ol>
                        <li>홈</li>
                        <li>회원가입</li>
                    </ol>
                </div>
                <div class="member_title">
                    <h1>회원가입</h1>
                    <p>회원가입을 하시면 더 많은 혜택을 누릴실 수 있습니다.</p>
                </div>
                <div class="member_box">
                    <span class="member_alert">표시는 반드시 입력하셔야 하는 항목입니다.</span>
                    <form action="#" method="post" id="memberForm">
                        <ul>
                            <li>
                                <label>아이디</label>
                                <input type="text" name="id" id="id">
                            </li>
                            <li>
                                <label>비밀번호</label>
                                <input type="password" name="pw" id="password">
                            </li>
                            <li>
                                <label>비밀번호 재확인</label>
                                <input type="password" id="password2">
                            </li>
                            <li>
                                <label>이름</label>
                                <input type="text"  name="name" id="name">
                            </li>
                            <li>
                                <label class="no">성별</label>
                                <select name="gender">
                                    <option>성별</option>
                                    <option value="남">남자</option>
                                    <option value="여">여자</option>
                                    <option>선택안함</option>
                                </select>
                            </li>
                            <li class="birth">
                                <label>생년월일</label>
                                <div>
                                    <input type="text" name="year" placeholder="년(4글자)" id="year" class="ymd">
                                    <select name="month" id="month" class="ymd">
                                        <option value="">월</option>
                                        <option value="01">1</option>
                                        <option value="02">2</option>
                                        <option value="03">3</option>
                                        <option value="04">4</option>
                                        <option value="05">5</option>
                                        <option value="06">6</option>
                                        <option value="07">7</option>
                                        <option value="08">8</option>
                                        <option value="09">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <input type="text" name="day" placeholder="일" id="day" class="ymd">
                                    <input type="hidden" name="birth" id="birth">
                                </div>
                            </li>
                            <li>
                                <label>이메일</label>
                                <input type="email" name="email">
                            </li>
                            <li>
                                <label>주소</label>
                                <input type="text" name="address" id="">
                            </li>
                        </ul>
                        <input type="button" value="회원가입" class="member_btn">
                    </form>
                </div>
            </div><!--.main_in-->
        </div> <!--#container-->
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
    <script src="../../resources/js/sub_member.js"></script>
</body>
</html>