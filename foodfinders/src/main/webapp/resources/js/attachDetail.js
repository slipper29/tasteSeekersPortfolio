/**
 * 
 */
$(document).ready(function(){

	for(let i = 0; i < $(".pno").length; i++){
		
	
			var pno=$(".pno").eq(i).val()
			//alert($(".pno").val())
			
			$.getJSON("/product/attach",{pno:pno},function(attachList){
				console.log(attachList);
				var str="";
				var str2="";
				// select한 후 productList.jsp에 출력
				$(attachList).each(function(i,attach){
					//이미지이면(섬네일을 웹브라이저에 출력)
					if(attach.image){
						str += "<div class='imgCheck' data-path='" +attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-image='"+attach.image+"'"+">"
						str += "<img src='/display?fileName="+encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName)+"'>"
						str += "</div>"
					}
					
					
				})
					if(attachList[0]){
						$(".product_img").eq(i).html(str);
					} else{
						str += "<img src='../resources/img/notReady_img.png' alt='testImg'>"
						$(".product_img").eq(i).html(str);
					}
					
				
			})
			
		}
		
			
		
		
		
})