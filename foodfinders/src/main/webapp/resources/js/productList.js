/**
 * 
 */
//let btn = document.querySelector("#btn");
//let searchSel = document.querySelector("#searchSel");
//let searchBox = document.querySelector("#searchBox");
//
//
//
//function funcBtn(){
//    if(searchSel.value==""){
//        alert("검색종류를 선택하세요");
//        return false;
//    } else if(searchBox.value==""){
//        alert("키워드를 입력하세요");
//        return false; 
//    }
//    return true;
//
//}
$(document).ready(function(){
	
	//전체메뉴탭버튼
	$('#fav').on('click', addFavorite);

    function addFavorite(e){
        var bookmarkURL = "https://www.foodfinders.co.kr/"; 
        var bookmarkTitle = "맛찾사";
        var triggerDefault = false; 
    
        if (window.sidebar && window.sidebar.addPanel) { 
            // Firefox version < 23 
            window.sidebar.addPanel(bookmarkTitle, bookmarkURL, ''); 
        } else if ((window.sidebar && (navigator.userAgent.toLowerCase().indexOf('firefox') > -1)) || (window.opera && window.print)) { 
            // Firefox version >= 23 and Opera Hotlist 
            var $this = $(this); 
            $this.attr('href', bookmarkURL); 
            $this.attr('title', bookmarkTitle); 
            $this.attr('rel', 'sidebar'); 
            $this.off(e); 
            triggerDefault = true; 
        } else if (window.external && ('AddFavorite' in window.external)) { 
            // IE Favorite 
            window.external.AddFavorite(bookmarkURL, bookmarkTitle); 
        } else { 
            // WebKit - Safari/Chrome 
            alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D키를 누르면 즐겨찾기에 등록하실 수 있습니다.'); 
        } 
        return triggerDefault; 
    };

    // 전체메뉴 클릭
    $('li.menu').click(function(){
        $('.g_sub').stop(true).slideToggle(800);
    })

    // 마우스 오버
    $('.nv_img, .best_img').mouseover(function(){
        $(this).find('.ho_plus').stop(true).animate({
            'bottom' : '0'
        }, 800);
        $(this).find('.ho_heart, .ho_heart span').click(function(){
            location.href="https://www.foodfinders.co.kr/member/login.php";
            return false;
        });
        $(this).find('.ho_cart, .ho_cart span').click(function(){
            location.href="https://www.foodfinders.co.kr/order/cart.php";
            return false;
        })
    })
    .mouseout(function(){
        $(this).find('.ho_plus').stop(true).animate({
            'bottom' : '-60px'
        }, 800);
    })
	
	
	// 검색버튼을 클릭했을 때
	$("#searchbtn").on("click", function(e){

		//키워드가 입력되어 있지 않으면
		if($("#keyword").val()==""){
			alert("키워드를 입력하세요");
			return false;
		}
		// 검색버튼 클릭시 무조건 1페이지부터 검색할 수 있도록
		//pagenum을 1로 셋팅
		$("#pagenum").val("1")
		
		$("#searchForm").submit();
	}) //검색버튼을 클릭했을 때의 끝
	
	// 페이지번호(클래스가 pageNo)를 클릭했을 때
	$(".pageNo").on("click", function(e){
		e.preventDefault();
		// 사용자가 선택한 페이지 번호를 
		//<input type="text" id="pagenum" name="pagenum" value="">
		//값 세팅
		$("#pagenum").val($(this).attr("href"));
//		$("#type").val();
//		$("#keyword").val();
//		$("#amount").val();
		if($("#keyword").val() == ""){
			//url에있는 pcategory값 가져오는 코드
			var search = location.search
			var params = new URLSearchParams(search);
			var getCategory= params.get('pcategory');
			$("#pcategory").val(getCategory)
		}
	
		//그래서 다 들고 서브밋합니다
		$("#pageForm").submit();
	})
	// 페이지번호를 클릭했을 때의 끝
	
	// 이전 다음 버튼을 클릭했을 때
//	$(".pageBtn").on("click", function(e){
//		e.preventDefault();
//		
//		$("#pagenum").val($(this).attr("href"));
//		
//		if($("#keyword").val() == ""){
//			var search = location.search
//			var params = new URLSearchParams(search);
//			var getCategory= params.get('pcategory');
//			$("#pcategory").val(getCategory)
//		}
//		$("#pageForm").submit();
//		
//	})
	

	
	//상품목록 한줄에 4개씩
	for(let i = 1; i <= $(".product_item").length; i++){
		if(i % 4 == 0){
			$(".product_item:nth-child(" + i + ")").css({
				"margin-right" : 0
			})
		}
	}
	
	//페이지버튼 클릭한것만 색깔넣기
	for(let i = 1; i <= $(".pageNo").length; i++){
		if(i == $("#pagenum").val()){
			$(".pageNo:nth-child(" + (i+1) + ")").css({
				"color" : "#ff623e"
			})
		}
	}
	
	
	
	
})
