<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">
    <title>Document</title>

    <!-- 3-1. jQueryUI 연결(animate) -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../../resources/css/adMain.css">
</head>
<body>
<c:choose>
	<c:when test="${session.adminCheck}">
		<div id="wrap">
			<div id="container">
				<div class="main_in">
					<h1 class="mainTitle">맛찾사 관리자 페이지</h1>
					<h2>상품관련 관리 폼</h2>
					<ul class="product">
						<li>
							<h3>상품등록</h3>
							<form role="form1" action="product/write" method="post">
								<div>
									<input type="text" name="pname" placeholder="상품명 입력">
									<input type="text" name="pprice" placeholder="상품가격 입력">
									<select name="pcategory" id="pcategory">
									<!-- 여기서 대분류 선택 소분류는 히든으로 만들어서 val()로 자바스크립트로 가져가서 소분류히든의 value에 다시 넣어주는 식 (change 이벤트)-->
										<option value="">카테고리 선택</option>
										<option value="농산_과일">과일</option>
										<option value="농산_채소">채소</option>
										<option value="농산_잡곡">잡곡</option>
										<option value="농산_견과류">견과류</option>
										<option value="수산_해산물">해산물</option>
										<option value="수산_생선">생선</option>
										<option value="수산_건어물">건어물</option>
										<option value="수산_젓갈">젓갈</option>
										<option value="축산_소고기">소고기</option>
										<option value="축산_돼지고기">돼지고기</option>
										<option value="축산_양고기">양고기</option>
										<option value="축산_축산가공식품">축산가공식품</option>
										<option value="축산_알류">알류</option>
										<option value="김치_포기김치">포기김치</option>
										<option value="김치_갓김치">갓김치</option>
										<option value="김치_총각김치">총각김치</option>
										<option value="김치_파김치">파김치</option>
										<option value="김치_묵은지">묵은지</option>
										<option value="김치_절임배추">절임배추</option>
										<option value="반찬_절임류">절임류</option>
										<option value="가공식품_장류">장류</option>
										<option value="가공식품_소스">소스</option>
										<option value="가공식품_수산가공식품">수산가공식품</option>
										<option value="가공식품_떡">떡</option>
										<option value="가공식품_두유">두유</option>
										<option value="건강식품_건강즙">건강즙</option>
										<option value="건강식품_과일즙">과일즙</option>
										<option value="건강식품_한방재료">한방재료</option>
										<option value="건강식품_건강분말">건강분말</option>
										<option value="건강식품_건강음료">건강음료</option>
										<option value="다이어트식품_곤약">곤약</option>
										<option value="냉동식품_즉석국">즉석국</option>
										<option value="냉동식품_만두">만두</option>
										<option value="음료/간식_김부각">김부각</option>
										<option value="음료/간식_차류">차류</option>
									</select>
									<input type="text" name="pmaincategory" id="pmaincategory">
									<div>
										<textarea name="pcontent" placeholder="내용을 입력하세요" cols="30" rows="10"></textarea>
									</div>
									<div>
										<input type="file" name="uploadFile" multiple>
									</div>
									<div>
										<input type="submit" id="uploadBtn" value="상품등록">
									</div>
									<div id="uploadResult">
										<ul>
								
										</ul>
									</div>
								</div>
							</form>
						</li>
						<li>
							<h3>상품수정</h3>
							<form role="form2" action="product/update" method="post">
								<div>
									<select id="updatePno">
										<c:forEach items="${plist}" var="product">
											<option value="${product.pno}">${product.pno}</option>
										</c:forEach>
									</select>
									<script>
										var listPno = new Array();
										var listName = new Array();
										var listPrice = new Array();
										var listCategory = new Array();
										var listContent = new Array();
										
										<c:forEach items="${plist}" var="item">
										listPno.push("${item.pno}");
										</c:forEach>
										
										<c:forEach items="${plist}" var="item">
										listName.push("${item.pname}");
										</c:forEach>
										
										<c:forEach items="${plist}" var="item">
										listPrice.push("${item.pprice}");
										</c:forEach>
										
										<c:forEach items="${plist}" var="item">
										listCategory.push("${item.pcategory}");
										</c:forEach>
										
										<c:forEach items="${plist}" var="item">
										listContent.push("${item.pcontent}");
										</c:forEach>
									</script>
										<input type="text" name="pno" id="updatePnoInput">
										<input type="text" name="pname" id="updateName" placeholder="수정할 상품명">
										<input type="text" name="pprice" id="updatePrice" placeholder="수정할 상품가격">
									<select name="pcategory" id="updateCategory">
									<!-- 여기서 대분류 선택 소분류는 히든으로 만들어서 val()로 자바스크립트로 가져가서 소분류히든의 value에 다시 넣어주는 식 (change 이벤트)-->
										<option value="">수정할 카테고리 선택</option>
										<option value="농산_과일">과일</option>
										<option value="농산_채소">채소</option>
										<option value="농산_잡곡">잡곡</option>
										<option value="농산_견과류">견과류</option>
										<option value="수산_해산물">해산물</option>
										<option value="수산_생선">생선</option>
										<option value="수산_건어물">건어물</option>
										<option value="수산_젓갈">젓갈</option>
										<option value="축산_소고기">소고기</option>
										<option value="축산_돼지고기">돼지고기</option>
										<option value="축산_양고기">양고기</option>
										<option value="축산_축산가공식품">축산가공식품</option>
										<option value="축산_알류">알류</option>
										<option value="김치_포기김치">포기김치</option>
										<option value="김치_갓김치">갓김치</option>
										<option value="김치_총각김치">총각김치</option>
										<option value="김치_파김치">파김치</option>
										<option value="김치_묵은지">묵은지</option>
										<option value="김치_절임배추">절임배추</option>
										<option value="반찬_절임류">절임류</option>
										<option value="가공식품_장류">장류</option>
										<option value="가공식품_소스">소스</option>
										<option value="가공식품_수산가공식품">수산가공식품</option>
										<option value="가공식품_떡">떡</option>
										<option value="가공식품_두유">두유</option>
										<option value="건강식품_건강즙">건강즙</option>
										<option value="건강식품_과일즙">과일즙</option>
										<option value="건강식품_한방재료">한방재료</option>
										<option value="건강식품_건강분말">건강분말</option>
										<option value="건강식품_건강음료">건강음료</option>
										<option value="다이어트식품_곤약">곤약</option>
										<option value="냉동식품_즉석국">즉석국</option>
										<option value="냉동식품_만두">만두</option>
										<option value="음료/간식_김부각">김부각</option>
										<option value="음료/간식_차류">차류</option>
									</select>
									<input type="text" name="pmaincategory" id="updateMaincategory">
									<div>
										<textarea name="pcontent" id="updateContent" placeholder="수정할 내용을 입력하세요" cols="30" rows="10"></textarea>
									</div>
									<div>
										<input type="file" name="uploadFile" multiple>
									</div>
									<div>
										<input type="submit" id="updateBtn" value="상품수정">
									</div>
									<div id="uploadResult">
										<ul>
								
										</ul>
									</div>
								</div>
							</form>
						</li>
						<li>
							<h3>상품삭제</h3>
							<div>
								<p>상품번호입력</p>
								<select id="deletePno">
										<c:forEach items="${plist}" var="product">
											<option value="${product.pno}">${product.pno}</option>
										</c:forEach>
								</select>
								<form action="product/delete" method="post">
									<input type="text" name="pno" id="deletePnoInput">
									<input type="submit" id="deleteBtn" value="상품삭제">
								</form>
							</div>
						</li>
					</ul>
					<h2>회원관련 관리 폼</h2>
					<ul class="member">
						<li>
							<h3>회원영구삭제</h3>
							<div>
							<p>회원아이디입력</p>
								<form action="member/delete" method="post">
									<input type="text" name="id" id="deleteMemberInput">
									<input type="submit" id="deleteMemberBtn" value="회원삭제">
								</form>
							</div>
						</li>
						<li>
							<h3>회원 관리자권한 부여</h3>
							<div>
							<p>회원아이디입력</p>
								<form action="member/adminUpdate" method="post">
									<input type="text" name="id" id="adminUpdateInput">
									<input type="submit" id="adminUpdateBtn" value="관리자권한부여">
								</form>
							</div>
						</li>
					</ul>
					<a class="indexLink" href="/">메인화면 돌아가기</a>
				</div>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<!--관리자로 로그인하지 않고 들어오면 뜨는 페이지화면-->
		<h1>이 페이지는 관리자 페이지입니다.</h1>
		<a class="indexLink" href="/">메인페이지로 돌아가기</a>
	</c:otherwise>
</c:choose>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="../../resources/js/adMain.js"></script>
    <script type="text/javascript" src="../resources/js/uploadAjax.js"></script>
</body>
</html>