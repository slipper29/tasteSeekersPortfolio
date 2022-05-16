

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










    //회원가입 폼 유효성 검사
 
    let result = "";
    let birth = "";
    let checkId = false;
    let checkPw = false;
    let checkPw2 = false;
    let checkName = false;
    let checkBirth = false;
    let checkAddress = false;

    $newP_id = $("<p></p>");
    $newP_pw = $("<p></p>");
    $newP_pw2 = $("<p></p>");
    $newP_name = $("<p></P>");
    $newP_birth = $("<p></p>");
    $newP_address = $("<p></p>");

     //주소검사 만들어야함
    
     //아이디 검사
    $("#id").on("blur", function(){

        $(this).after($newP_id)
        
        let idTest = /^[a-z]+[a-z0-9]{5,19}$/g
        if($(this).val() == ""){
            result = "필수 정보입니다."
            checkId = false;
        } else if(!idTest.test( $(this).val())){
            result = "영소문자로 시작하는 6~20자의 영소문자 또는 숫자만 가능합니다."
            checkId = false;
        } else {
        	var id= $("#id").val()
        	let chch = "";

        	///////////////////////////////
        	overlapId(id,function(chch){
        		alert(chch);
        		if(chch == "0"){
                	result = "중복된 아이디입니다."
                	checkId = false;
                } else if(chch == "1"){
                	result = "멋진 아이디입니다."
                	checkId = true
                }
        		$newP_id.text(result)
        	});
        	///////////////////////////////
        }
        $newP_id.text(result)
    })
    
    //비밀번호 검사
    $("#password").on("blur", function(){
        
        $(this).after($newP_pw)

        let pwTest = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/
        if($(this).val() == ""){
            result = "필수 정보입니다."
            checkPw = false;
        } else if(!pwTest.test( $(this).val())){
            result = "8 ~ 16자의 영문, 숫자, 특수문자를 최소 한가지씩 조합하셔야합니다."
            checkPw = false;
        } else {
            result = "멋진비밀번호입니다!"
            checkPw = true;
        }
            
        $newP_pw.text(result)
        result = "";
    })


    //비밀번호 확인
    $("#password2").on("blur", function(){
       
        $(this).after($newP_pw2)

        if($(this).val() == $("#password").val()){
            result = "비밀번호가 일치합니다."
            checkPw2 = true;
        } else{
            result = "비밀번호가 일치하지않습니다."
            checkPw2 = false;
        }
            
        $newP_pw2.text(result)
        result = "";
    })

    //이름 검사
    $("#name").on("blur", function(){
 
        $(this).after($newP_name)

        let nameTest = /^[가-힣]{2,5}$/
        if($(this).val() == ""){
            result = "필수 정보입니다."
            checkName = false;
        } else if(!nameTest.test( $(this).val())){
            result = "2자에서 5자 사이 한글로 입력해주세요"
            checkName = false;
        } else{
            result = "멋진이름입니다!"
            checkName = true;
        }
            
        $newP_name.text(result)
        result = "";
    })


    //생년월일 합치기 함수

    function yyyymmdd(){
        if($("#year").val() != "" && $("#month").val() != "" && $("#day").val() != ""){
            let daydd="";
            if($("#day").val().length == 1){
                 daydd = "0" + $("#day").val()
            } else {
                 daydd = $("#day").val()
            }
            
            birth = $("#year").val() + $("#month").val() + daydd
            //alert(birth)
        }
    }

    //생년월일 유효성 검사
    $("#year, #month, #day").on("blur", function(){

        yyyymmdd();
        let today = new Date();
        let yyyy = today.getFullYear();
        let mm = today.getMonth() + 1;
        let dd = today.getDate();

        if(mm > 12){
            mm = 1
        }
        let nowDay = "" + yyyy + ("00"+mm).slice(-2) + ("00"+dd).slice(-2)
        let birthTest = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/
        if(birth == ""){
            if($("#year").val() == ""){
                result = "년도를 입력해주세요."
                checkBirth = false;
            } else if($("#month").val() == ""){
                result = "월을 입력해주세요"
                checkBirth = false;
            } else if($("#day").val() == ""){
                result = "일을 입력해주세요"
                checkBirth = false;
            }
        } else if(!birthTest.test(birth)){
            if(birth.substr(0, 4) < 1899){
                result = "혹시 도깨비이신가요? 다시입력해주세요"
                checkBirth = false;
            } else if(($("#day").val() > 31 || $("#day").val() < 1)){
                result = "일을 정확히 입력해주세요"
                checkBirth = false;
            } else {
                result = "미래에서 오셨군요?! 다시입력해주세요"
                checkBirth = false;
            }
        } else if (birth*1 > nowDay*1) {
            result = "미래에서 오셨군요?! 다시입력해주세요"
            checkBirth = false;
        } else if ($("#month").val() == "02" && ($("#day").val()*1) > 29 && ($("#year").val()*1) % 4 == 0  && ($("#year").val()*1) % 100 == 0 && ($("#year").val()*1) % 400 == 0){
            result = "윤년 2월은 29일까지입니다."
            checkBirth = false;
        } else if ($("#month").val() == "02" && ($("#day").val()*1) > 28 && ($("#year").val()*1) % 4 == 0  && ($("#year").val()*1) % 100 == 0){
            result = "2월은 28일까지입니다."
            checkBirth = false;
        } else if ($("#month").val() == "02" && ($("#day").val()*1) > 29 && ($("#year").val()*1) % 4 == 0){
            result = "윤년 2월은 29일까지입니다."
            checkBirth = false;
        } else if ($("#month").val() == "02" && ($("#day").val()*1) > 28){
            result = "2월은 28일까지입니다."
            checkBirth = false;
        }else if (($("#month").val()*1) % 2 == 0 && ($("#day").val()*1) > 30){
            result = "일을 정확히 입력해주세요(31일 없음)"
            checkBirth = false;
        } else {
        	$("#birth").val(birth)
            result = "멋진 생년월일입니다."
            checkBirth = true;
        }
        $(".birth").append($newP_birth)
    
        $newP_birth.text(result)
        result = "";
    })
    
    

    //아이디, 비밀번호, 비밀번호 확인, 이름, 생년월일 유효성검사 트루일때 submit
    $(".member_btn").on("click", function(e){
        e.preventDefault();
        
        if(checkId && checkPw && checkPw2 && checkName && checkBirth){
            alert("정상적")
            $("#memberForm").submit();
        } else {
            alert("회원가입 정보를 다시 한번 확인해 주세요!")
        }
    })


})

//아이디중복검사(ajax)

function overlapId(id,callback){

	$.getJSON("/replies/overlapId/"+id+".json", function(data){
        if(data == ""){
        	chch = "1";
        	checkId = true;
        }else if(data[0].id == id){
			chch = "0"
			checkId = false;
		}
		////////////////////////////////
		if(callback){
			callback(chch);
		}
		////////////////////////////////
	})
	return overlapId;
}




