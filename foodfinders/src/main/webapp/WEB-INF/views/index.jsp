<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>맛찾사</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">
   


    <!-- 3-1. jQueryUI 연결(animate) -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">

    <!--swiper-->
    <link rel="stylesheet" href="../../resources/swiper-4.5.1/dist/css/swiper.css">

    <!-- 1. 작업한 css -->
    <link rel="stylesheet" href="../../resources/css/style.css">



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
            <div id="slideShow">
                <div class="slides">
                    <a href="#" class="slide"><img src="../../resources/img/slide1.jpg" alt=""></a>
                    <a href="#" class="slide"><img src="../../resources/img/slide2.jpg" alt=""></a>
                    <a href="#" class="slide"><img src="../../resources/img/slide3.jpg" alt=""></a>
                    <a href="#" class="slide"><img src="../../resources/img/slide4.jpg" alt=""></a>
                    <a href="#" class="slide"><img src="../../resources/img/slide5.jpg" alt=""></a>
                </div>
                <div class="nav_btn">
                    <a href="#" class="prev">Prev</a>
                    <a href="#" class="next">Next</a>
                </div>
                <div class="pager">
                </div>
            </div>

            <section class="main2">
                <div class="main_title">
                    <h2>상품 <span>한눈에</span> 보기</h2>
                </div>
                <div class="main_content">
                    <div class="main_in">
                        <div class="swiper mySwiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide p1 on"><a href="#">농산</a></div>
                                <div class="swiper-slide p2"><a href="#">수산</a></div>
                                <div class="swiper-slide p3"><a href="#">축산</a></div>
                                <div class="swiper-slide p4"><a href="#">가공</a></div>
                                <div class="swiper-slide p5"><a href="#">건강</a></div>
                                <div class="swiper-slide p6"><a href="#">김치</a></div>
                                <div class="swiper-slide p7"><a href="#">반찬</a></div>
                                <div class="swiper-slide p8"><a href="#">음료/간식</a></div>
                                <div class="swiper-slide p9"><a href="#">냉동/간편</a></div>
                                <div class="swiper-slide p10"><a href="#">다이어트</a></div>
                            </div>
                        </div>
                        <div class="nv_list swipertap">
                            <ul class="num1">
                                <li>
                                    <a href="/product/detail?pno=2">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-1-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">성주 과즙가득 꿀사과 3kg</p>
                                        <p class="nv_price">37,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=3">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-1-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">뉴질랜드산 달달한 골든메론 4kg 1통</p>
                                        <p class="nv_price">21,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=4">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-1-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">델몬트 호주산 과즙팡팡 석양을 닮은 오렌지 2+1Box 30kg</p>
                                        <p class="nv_price">119,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=5">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-1-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">프리미엄 대만 애플망고 2kg</p>
                                        <p class="nv_price">17,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num2">
                                <li>
                                    <a href="/product/detail?pno=6">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-2-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">서귀포에서 가져온 간고등어 10마리(20포) 10kg</p>
                                        <p class="nv_price">37,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=7">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-2-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">러시아 블라디보스토크산 러시아대게 3kg</p>
                                        <p class="nv_price">110,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=8">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-2-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">남해 영도산 성게 1kg + 성게알(우니) 500g set</p>
                                        <p class="nv_price">19,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=9">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-2-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">아이슬란드산 참다랑어 오도로 도매 5kg</p>
                                        <p class="nv_price">375,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num3">
                                <li>
                                    <a href="/product/detail?pno=10">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-3-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">미경산 한우 특A등급 살치살/꽃살/안창살 모듬 1팩 500g</p>
                                        <p class="nv_price">89,500<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=11">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-3-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">미국산 초이스등급 토마호크(스테이크용)1.5kg</p>
                                        <p class="nv_price">100,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=12">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-3-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">국내산 11호 양념닭갈비 1kg 1+1set</p>
                                        <p class="nv_price">19,300<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=13">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-3-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">우리한돈 생삼겹(미추리) 1kg</p>
                                        <p class="nv_price">15,100<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num4">
                                <li>
                                    <a href="/product/detail?pno=14">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-4-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">부산 남포 자갈치에서 공수한 반건조 오징어 2kg</p>
                                        <p class="nv_price">27,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=15">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-4-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">제주 영월산 말린 감태 1팩 200g</p>
                                        <p class="nv_price">20,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=16">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-4-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">스리랑카 실론시나몬 스틱 (ALBA등급 100%) 500g</p>
                                        <p class="nv_price">9,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=17">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-4-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">김천시 특산 누룽지 500g 1팩</p>
                                        <p class="nv_price">8,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num5">
                                <li>
                                    <a href="/product/detail?pno=18">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-5-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">단양 프리미엄 흑마늘 2kg</p>
                                        <p class="nv_price">95,000<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=19">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-5-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">충남 금산 건홍삼 500g 2+1set</p>
                                        <p class="nv_price">70,800<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=20">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-5-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">강원도 홍천 벌집꿀 2kg</p>
                                        <p class="nv_price">52,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=21">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-5-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">문경 오미자 500g</p>
                                        <p class="nv_price">37,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num6">
                                <li>
                                    <a href="/product/detail?pno=22">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-6-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">HACCP인증 국내산 김치 10kg</p>
                                        <p class="nv_price">137,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=23">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-6-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">겨울무로 담근 새하얀 동치미 2kg</p>
                                        <p class="nv_price">20,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?24">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-6-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">전라도 새콤달콤 파김치 2kg</p>
                                        <p class="nv_price">19,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=25">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-6-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">국내산 깍두기 1kg</p>
                                        <p class="nv_price">27,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num7">
                                <li>
                                    <a href="/product/detail?pno=26">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-7-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">아기들도 좋아하는 달콤 일미 1kg</p>
                                        <p class="nv_price">13,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=27">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-7-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">천일염으로 간을 한 북어보푸라기 3색 200g 3팩</p>
                                        <p class="nv_price">20,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=28">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-7-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">전라도식 시금치 무침 500g</p>
                                        <p class="nv_price">7,600<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=29">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-7-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">어르신이 좋아하는 콩자반 5kg 1팩</p>
                                        <p class="nv_price">17,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num8">
                                <li>
                                    <a href="/product/detail?pno=30">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-8-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">(전통맛공방 이신)수제 프리미엄 약과 30개 set</p>
                                        <p class="nv_price">77,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=31">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-8-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">일본 오사카 직수입 프리미엄 화과자 10개 묶음 2+1set</p>
                                        <p class="nv_price">60,620<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=32">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-8-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">국내산 계피 사용 전통 수정과 1L</p>
                                        <p class="nv_price">12,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=33">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-8-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">전통 수제 식혜 1L</p>
                                        <p class="nv_price">8,200<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num9">
                                <li>
                                    <a href="/product/detail?pno=34">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-9-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">냉동 군만두 2kg</p>
                                        <p class="nv_price">11,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=35">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-9-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">냉동 페퍼로니 피자</p>
                                        <p class="nv_price">10,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=36">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-9-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">냉동 치즈스틱 1kg 1+1set</p>
                                        <p class="nv_price">19,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=37">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-9-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">냉동 볶음밥(치킨데리야끼, 소불고기, 황금계란)450g 1+1+1 set</p>
                                        <p class="nv_price">11,800<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                            <ul class="num10">
                                <li>
                                    <a href="/product/detail?pno=38">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-10-1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">특산 연곤약 1kg</p>
                                        <p class="nv_price">7,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=39">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-10-2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">다이어트st 샐러드용 야채모듬 500g 1팩</p>
                                        <p class="nv_price">13,900<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=40">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-10-3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">국내산 9호 생닭사용 수비드 닭가슴살 300g 10팩set</p>
                                        <p class="nv_price">49,750<span>원</span></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/product/detail?pno=41">
                                        <div class="nv_img">
                                            <img src="../../resources/img/main2-10-4.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="nv_name">HACCP인증 국내산 콩 100%사용 모두부 500g 1팩</p>
                                        <p class="nv_price">7,900<span>원</span></p>
                                    </a>
                                </li>
                                <div class="plus"><a href="#">상품 더보러 가기</a></div>
                            </ul>
                        </div>
                    </div>
                </div>
            </section> <!--.main2-->

            <section class="main3">
                <div class="main_title">
                    <h2>BEST</h2>
                    <p>지금 고객들이 찾는 상품은?</p>
                </div>
                <div class="main3_content">
                    <div class="main_in">
                        <div class="best_list">
                            <ul>
                                <li>
                                    <a href="">
                                        <div class="best_img">
                                            <img src="../../resources/img/best1.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="best_name">경북 꿀맛 청송사과 5kg</p>
                                        <p class="best_price">25,900<span>원</span></p>
                                        <div class="best_memo">
                                            <p class="bt_star">4.8</p>
                                            <p class="bt_rv">50463</p>
                                        </div>
                                        <p class="best_rank">1위</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <div class="best_img">
                                            <img src="../../resources/img/best2.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="best_name">참기름 들기름 180ml</p>
                                        <p class="best_price">19,900<span>원</span></p>
                                        <div class="best_memo">
                                            <p class="bt_star">4.8</p>
                                            <p class="bt_rv">33617</p>
                                        </div>
                                        <p class="best_rank">2위</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <div class="best_img">
                                            <img src="../../resources/img/best3.jpg" alt="">
                                            <div class="ho_plus">
                                                <p class="ho_heart"><span>찜하기</span></p>
                                                <p class="ho_cart"><span>장바구니 담기</span></p>
                                            </div>
                                        </div>
                                        <p class="best_name">제주 서귀포 레드향 조생 노지감귤 2kg 3kg 5kg</p>
                                        <p class="best_price">22,900<span>원</span></p>
                                        <div class="best_memo">
                                            <p class="bt_star">4.8</p>
                                            <p class="bt_rv">27576</p>
                                        </div>
                                        <p class="best_rank">3위</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> <!--.main3_content-->
            </section> <!--.main3-->

            <section class="main4">
                <div class="main_title">
                    <h2>NOVELTY</h2>
                    <p>새로운 즐거움을 주는 맛</p>
                </div>
                <div class="main_in">
                    <div class="nv_list">
                        <ul>
                            <li>
                                <a href="">
                                    <div class="nv_img">
                                        <img src="../../resources/img/novelty1.jpg" alt="">
                                        <div class="ho_plus">
                                            <p class="ho_heart"><span>찜하기</span></p>
                                            <p class="ho_cart"><span>장바구니 담기</span></p>
                                        </div>
                                    </div>
                                    <p class="nv_name">프리미엄 대만 애플망고 2kg</p>
                                    <p class="nv_price">37,900<span>원</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="nv_img">
                                        <img src="../../resources/img/novelty2.jpg" alt="">
                                        <div class="ho_plus">
                                            <p class="ho_heart"><span>찜하기</span></p>
                                            <p class="ho_cart"><span>장바구니 담기</span></p>
                                        </div>
                                    </div>
                                    <p class="nv_name">HACCP 타트체리 즙 쥬스 타트체리농축액 스틱 30포</p>
                                    <p class="nv_price">20,900<span>원</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="nv_img">
                                        <img src="../../resources/img/novelty3.jpg" alt="">
                                        <div class="ho_plus">
                                            <p class="ho_heart"><span>찜하기</span></p>
                                            <p class="ho_cart"><span>장바구니 담기</span></p>
                                        </div>
                                    </div>
                                    <p class="nv_name">프리미엄 영광 법성포 굴비 세트 참조기 10미 20미 찐 부세보리굴비 5미 10미</p>
                                    <p class="nv_price">19,750<span>원</span></p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="nv_img">
                                        <img src="../../resources/img/novelty4.jpg" alt="">
                                        <div class="ho_plus">
                                            <p class="ho_heart"><span>찜하기</span></p>
                                            <p class="ho_cart"><span>장바구니 담기</span></p>
                                        </div>
                                    </div>
                                    <p class="nv_name">전라도 파김치 1kg 2kg</p>
                                    <p class="nv_price">17,900<span>원</span></p>
                                </a>
                            </li>
                        </ul>
                    </div> <!--.nv_list-->
                    <!-- <p class="m4_prev"><a href=""><span class="hide">이전으로</span></a></p>
                    <p class="m4_next"><a href=""><span class="hide">다음으로</span></a></p> -->
                </div>
            </section> <!--.main4-->

            <section class="main5">
                <div class="main5_in">
                    <div class="main5_L">
                        <a href="#"> <!--누르면 레시피 페이지로 넘어감-->
                            <div class="title">
                                <h2>RECIPE</h2>
                                <p>맛찾사만의 숨겨진 스크릿 레시피</p>
                            </div> <!--title-->
                            <div class="main5_photo"><img src="../../resources/img/main5-1.jpg" alt=""></div>
                            <div class="main5_recipe">
                                <p class="r1">요리방법</p>
                                <p class="r2">
                                    제철요리<br>
                                    <span>애호박이 들어간 야채꼬지</span>
                                </p>
                            </div> <!--main5_recipe-->
                        </a>
                    </div> <!--main5_L-->
                    <div class="main5_R">
                        <div class="main5_box1">
                            <ul>
                                <li>
                                    <input type="checkbox" name="" id="info1" checked="checked" class="ch" value="12000">
                                    <div class="main5_info">
                                        <label for="info1">
                                            <div class="main5_memo">
                                                <p class="main5_box_photo"><img src="../../resources/img/main5-2.jpg" alt=""></p>
                                                <p class="main5_box_text">
                                                    화천 애호박 3kg<br>
                                                    <span>12,000원</span>
                                                </p>
                                            </div>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <input type="checkbox" name="" id="info2" checked="checked" class="ch" value="18000">
                                    <div class="main5_info">
                                        <label for="info2">
                                            <div class="main5_memo">
                                                <p class="main5_box_photo"><img src="../../resources/img/main5-3.jpg" alt=""></p>
                                                <p class="main5_box_text">
                                                    전주 흙당근 2kg<br>
                                                    <span>18,000원</span>
                                                </p>
                                            </div>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <input type="checkbox" name="" id="info3" checked="checked" class="ch" value="37000">
                                    <div class="main5_info">
                                        <label for="info3">
                                            <div class="main5_memo">
                                                <p class="main5_box_photo"><img src="../../resources/img/main5-4.jpg" alt=""></p>
                                                <p class="main5_box_text">
                                                    호주 엑스트라버진 올리브유 3L<br>
                                                    <span>37,000원</span>
                                                </p>
                                            </div>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <input type="checkbox" name="" id="info4" checked="checked" class="ch" value="37000">
                                    <div class="main5_info">
                                        <label for="info4">
                                            <div class="main5_memo">
                                                <p class="main5_box_photo"><img src="../../resources/img/main5-4.jpg" alt=""></p>
                                                <p class="main5_box_text">
                                                    호주 엑스트라버진 올리브유 3L<br>
                                                    <span>37,000원</span>
                                                </p>
                                            </div>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <input type="checkbox" name="" id="info5" checked="checked" class="ch" value="37000">
                                    <div class="main5_info">
                                        <label for="info5">
                                            <div class="main5_memo">
                                                <p class="main5_box_photo"><img src="../../resources/img/main5-4.jpg" alt=""></p>
                                                <p class="main5_box_text">
                                                    호주 엑스트라버진 올리브유 3L<br>
                                                    <span>37,000원</span>
                                                </p>
                                            </div>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div> <!--main5_box-->
                        <div class="main5_box2">
                            <label><input type="checkbox" checked="checked" id="infototal"><span id="totalcount"> 총 3개 품목 선택</span></label>
                        </div> <!--main5_box2-->
                        <div class="main5_box3">
                            <a href="#">
                                총 <span id="totalprice"></span>원 장바구니 담기
                            </a>
                        </div> <!--main5_box3-->
                    </div> <!--main5_R-->
                </div> <!--main5_in-->
            </section>

            <section class="main6">
                <div class="main_title">
                    <h2>REVIEW</span></h2>
                    <p>맛찾사를 먼저 찾은 고객들의 한줄평</p>
                </div>
                <div class="main_in">
                    <div class="review_list">
                        <ul>
                            <li>
                                <a href="">
                                    <div class="rv_box">
                                        <p class="rv_img"><img src="../../resources/img/rv1.jpg" alt=""></p>
                                        <div class="rv_text">
                                            <p class="rv_title">유기농 석류즙 30포</p>
                                            <p class="rv_star">5.0</p>
                                            <p class="rv_memo">석류즙 좋네요 진짜 진액 같음</p>
                                            <p class="rv_id">kong****</p>
                                        </div>
                                    </div> <!--.rv_box-->
                                    <!-- 얜 포지션으로 배치 혹은 마진으로 -->
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="rv_box">
                                        <p class="rv_img"><img src="../../resources/img/rv2.jpg" alt=""></p>
                                        <div class="rv_text">
                                            <p class="rv_title">달콤한 명품 태국 망고 2kg</p>
                                            <p class="rv_star">5.0</p>
                                            <p class="rv_memo">선물 했는데 받으신 분이 아주 좋아했어요</p>
                                            <p class="rv_id">soli****</p>
                                        </div>
                                    </div> <!--.rv_box-->
                                    <!-- 얜 포지션으로 배치 혹은 마진으로 -->
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="rv_box">
                                        <p class="rv_img"><img src="../../resources/img/rv3.jpg" alt=""></p>
                                        <div class="rv_text">
                                            <p class="rv_title">경북 꿀맛 청송사과 5kg 꿀사과</p>
                                            <p class="rv_star">5.0</p>
                                            <p class="rv_memo">맛있어서 두번쨰 주문해서 먹어요. 아삭아삭 맛있어요</p>
                                            <p class="rv_id">h766****</p>
                                        </div>
                                    </div> <!--.rv_box-->
                                    <!-- 얜 포지션으로 배치 혹은 마진으로 -->
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <div class="rv_box">
                                        <p class="rv_img"><img src="../../resources/img/rv4.jpg" alt=""></p>
                                        <div class="rv_text">
                                            <p class="rv_title">유기농 도라지배즙 30포</p>
                                            <p class="rv_star">5.0</p>
                                            <p class="rv_memo">도라지향이 깊고 풍부해요. 살짝 시큼해서 놀랐지만 먹을만해요. 목건강생각하면서 먹으려구요!</p>
                                            <p class="rv_id">tkdg****</p>
                                        </div>
                                    </div> <!--.rv_box-->
                                    <!-- 얜 포지션으로 배치 혹은 마진으로 -->
                                </a>
                            </li>
                        </ul>
                    </div> <!--.review-list-->
                </div>
            </section> <!--.main6-->

            <section class="main7">
                <div class="main_title">
                    <h2>EXHIBITIONS</h2>
                    <p>고객님을 위한 맛찾사만의 특별한 기획전</p>
                </div>
                <div class="main7_content">
                    <div class="main_in">
                        <div class="ex_list">
                            <ul>
                                <li>
                                    <a href="">
                                        <p class="ex_img"><img src="../../resources/img/ev1.jpg" alt=""></p>
                                        <div class="ex_memo">
                                            <p class="ex1">피로회복에 좋은 레몬</p>
                                            <p class="ex2">잔류 농약 검사를 거친 깨끗하고 건강한</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <p class="ex_img"><img src="../../resources/img/ev2.jpg" alt=""></p>
                                        <div class="ex_memo">
                                            <p class="ex1">햇살을 듬뿍 받고 자란 캘리포니아 오렌지</p>
                                            <p class="ex2">씨 없는 네이블 오렌지</p>
                                        </div>
                                    </a>
                                </li>                        
                            </ul>
                        </div>
                    </div>
                </div>
            </section> <!--.main7-->
            
            <section class="main8">
                <div class="main_in">
                    <div class="notice">
                        <h3 class="f_title">공지사항</h3>
                        <div class="nt_list">
                            <ul>
                                <li><a href="">12월 24일 크리스마스 연휴로 인한 배송불가 안내</a></li>
                                <li><a href="">추석 연휴 마지막 배송 일정 안내</a></li>
                                <li><a href="">5월 4일(화) 5월 5일(수) 발송 불가 안내</a></li>
                                <li><a href="">체리 발송 지연 안내</a></li>
                            </ul>
                        </div> <!--.notice-->
                        <p class="f_more"><a href="sub_cscenter"><span class="hide">더보기</span></a></p>
                    </div>
                    <div class="qna">
                        <h3 class="f_title">자주 묻는 질문</h3>
                        <div class="qna_list">
                            <ul>
                                <li><a href="">회원 정보</a></li>
                                <li><a href="">결제</a></li>
                                <li><a href="">배송</a></li>
                                <li><a href="">교환/반품/환불</a></li>
                                <li><a href="">마일리지</a></li>
                                <li><a href="">기타</a></li>
                            </ul>
                        </div>
                        <p class="f_more"><a href="sub_cscenter"><span class="hide">더보기</span></a></p>
                    </div> <!--.qna-->
                    <div class="etc">
                        <div class="account">
                            <h3>은행 계좌 안내</h3>
                            <p>
                                06809631604018</span><br>
                                기업은행<br>
                                [예금주 : 주식회사 맛찾사]
                            </p>
                        </div>
                        <div class="cs">
                            <h3>고객 상담 센터</h3>
                            <p>
                                <span class="tell">010-3142-3135</span>
                                월-금 : 09:00~18:30<br>
                                점 심 : 09:00~18:30<br>
                                주말 및 공휴일은 휴무입니다.
                            </p>
                        </div>
                    </div> <!--.etc-->
                </div>
            </section>
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
	<!-- 커밋 테스트 -->


        <!-- 3. jQuery 연결 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!--swiper-->
    <script src="../../resources/swiper-4.5.1/dist/js/swiper.js"></script>
    <script src="../../resources/js/script.js">     </script>
</body>
</html>