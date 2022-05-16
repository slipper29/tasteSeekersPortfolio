$(function(){
	
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
	
	
	
	
	
	
	
	
	
	
	
    $('.question').click(function(){
        if($(this).siblings('.answer').css('display') == 'none'){
            $('.question').siblings('.answer').slideUp();
            $(this).siblings('.answer').slideDown();
        } else{
            $(this).siblings('.answer').slideUp();
        }
    })
})