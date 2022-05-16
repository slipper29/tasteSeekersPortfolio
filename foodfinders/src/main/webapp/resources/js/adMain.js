/**
 * 
 */
$(document).ready(function(){
	
	//카테고리 선택하면 메인카테고리에도 값 넣어주기
	$("#pcategory").on("change", function(){
		var string = $(this).val()
		var maincategory = string.split('_')
		$("#pmaincategory").val(maincategory[0])
	})
	
	//업데이트를 위한 값을 인풋태그에 넣어주기
	$("#updatePno").on("change", function(){
		
		$("#updatePnoInput").val($("#updatePno").val())
		
		let result = 0;
		for(let i = 1; i < listPno.length; i++){
			if(listPno[i] == $("#updatePno").val()*1){
				result = i
			}
		}
		
		$("#updateName").val(listName[result])
		$("#updatePrice").val(listPrice[result])
		$("#updateCategory").val(listCategory[result])
		
		//업데이트))))카테고리 선택하면 메인카테고리에도 값 넣어주기
		var string = $("#updateCategory").val()
		var maincategory = string.split('_')
		$("#updateMaincategory").val(maincategory[0])
		
		$("#updateContent").val(listContent[result])
	})
	
	//delete를 위한 셀렉트태그 만지면 인풋태그에 값넣기
	$("#deletePno").on("change", function(){
		$("#deletePnoInput").val($(this).val())
	})
	
	
})