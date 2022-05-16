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
})

$(function(){

    $('#slideShow').each(function(){
        /* 
            slide보여주기
            pager생성
            pager .active 추가
            화면에 표시되는 이미지에 따라서 nav_btn 설정
            타이머
            타이머 멈추기
        */
        let $slideGroup = $(this).find('.slides');//모든 슬라이드
        let $slides = $slideGroup.find('.slide');// 각슬라이드
        let $nav = $(this).find('.nav_btn') //prev ,next
        let $pager =$(this).find('.pager')//pager

        let pagerHtml = '';
        let currentIndex = 0;
        let timer ;

        //슬라이드 이미지 위치
        $slides.each(function(i){
            $(this).css({
                'left' : i *100 +"%"
            })
            //pager 생성
            pagerHtml += "<a href=''>" + (i+1) +"</a>"
        })
        //html() : 매개변수로 전달한 문자열을 HTML코드에 삽입하는 메서드
        $pager.html(pagerHtml)

        //모든 슬라이드 표시
        function goToSlide(index){
            $slideGroup.animate({
                'left' : -100 *index +"%",
            },500)
            currentIndex =index;

            updateNav();
        }

            //슬라이드 상태에 따라서 업데이트
            function updateNav(){
                let $navPrev = $nav.find('.prev');
                let $navNext = $nav.find('.next')

                if(currentIndex ==0){
                    $navPrev.addClass('disabled');
                }else{
                    $navPrev.removeClass('disabled')
                }
                if (currentIndex ==$slides.length-1){
                    $navNext.addClass('disabled');
                }else{
                    $navNext.removeClass('disabled')
                }
                $pager.find('a').removeClass('active')
                $pager.find('a').eq(currentIndex).addClass('active');
            }
            //타이머 

            function startTimer(){
              timer = setInterval(function(){
                    let nextIndex = (currentIndex+1) % $slides.length
                    goToSlide(nextIndex)
                },5000)
            }
        

            //타이머 정지
            function stopTimer(){
                clearInterval(timer)
            }

            //pager에 해당하는 이미지 표시하기
            $pager.on('click','a', function(event){
                event.preventDefault();  //콜백함수를 실행하고싶지만 a의 링크이동을 막고싶을때 사용
                
                if(!$(this).hasClass('active')){
                    goToSlide($(this).index())
                }
            })
            //nav를 클릭하면 해당 슬라이드 표시
            $nav.on('click', 'a', function(event){
                event.preventDefault();

                if($(this).hasClass('prev')){
                    goToSlide(currentIndex-1)
                }else {
                    goToSlide(currentIndex+1)
                }
            })

            $(this).on({
                mouseenter : stopTimer,
                mouseleave : startTimer
            })

            goToSlide(currentIndex);

            startTimer();
    })

    //메인2

$(function(){
    //스와이프
var swiper = new Swiper(".mySwiper", {
    slidesPerView: 6,
    spaceBetween: 0,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    loop : true,
    centeredSlides: true,
  });

//처음에 기본 한개(num1 농산)만 보이게
$('.swipertap ul').hide();
$('.swipertap .num1').show();

$('.swiper-slide').click(function(){
  
    //클릭했을때 주황색넣기
    $('.swiper-slide').removeClass('on')
    $(this).addClass('on')

    //탭버튼
    $('.swipertap ul').hide()

    for(let i = 1; i <= 10; i++) {
        if($(this).hasClass('p' + i) == true){
            $('.swipertap .num'+i).show();
            return false;
        }
    }
    
})
})
})

//메인5

main5();
function main5(){
    let totalprice = document.querySelector('#totalprice')
    let infototal = document.querySelector('#infototal')
    let ch = document.querySelectorAll('.ch')

    // 갯수
    let count = ch.length;
    // 금액
    let sum = 0
    // 하나라도 꺼지면 전체박스 꺼지고 다켜지면 전체박스도 켜짐
    let totalswitch = 0;
    

    //초기 총 금액
    firsttotalprice();
    function firsttotalprice(){
        sum = 0
        for(let i = 0; i < ch.length; i++){
            sum += ch[i].value * 1
        }
        totalprice.innerHTML = sum
    }
    //초기 총 갯수
    totalcount.innerHTML = '총 ' + count + '개 품목 선택'

    //전체 선택 및 전체 해제
    infototal.addEventListener('click',function(){

        //전체체크박스 체크하면 전체켜지고 꺼지고
        for(let i = 0; i < ch.length; i++){ 
            ch[i].checked = infototal.checked
        }

        //총 갯수 0 or 3개(정확히는 배열갯수)
        if(infototal.checked == true){
            count = ch.length;
            totalcount.innerHTML = '총 ' + count + '개 품목 선택'
            firsttotalprice();
            totalswitch = 0
        } else {
            count = 0;
            totalcount.innerHTML = '총 ' + count + '개 품목 선택'
            sum = 0;
            totalprice.innerHTML = sum
            totalswitch = ch.length
        }
    })

    //하나하나인식
    
    for(let i = 0; i < ch.length; i++){
        ch[i].addEventListener('change', function(){
            if(this.checked == true){
                count++;
                totalcount.innerHTML = '총 ' + count + '개 품목 선택'
                sum += this.value * 1
                totalprice.innerHTML = sum
                totalswitch--
            } else {
                count--;
                totalcount.innerHTML = '총 ' + count + '개 품목 선택'
                sum -= this.value * 1
                totalprice.innerHTML = sum
                totalswitch++
            }
            //하나라도 꺼지면 전체박스 꺼지고 다켜지면 전체박스도 켜짐
            if(totalswitch == 1){
                infototal.checked = false
            } else if(totalswitch == 0){
                infototal.checked = true
            }
        })
    }

}

