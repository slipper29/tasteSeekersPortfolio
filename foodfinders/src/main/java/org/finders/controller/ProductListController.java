package org.finders.controller;

import java.util.ArrayList;

import org.finders.model.AttachFileDTO;
import org.finders.model.Criteria;
import org.finders.model.PageDTO;
import org.finders.model.ProductListDTO;
import org.finders.model.ShoppingDTO;
import org.finders.service.ProductListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ProductListController {
	@Autowired
	ProductListService pservice;
	
	// Model : Controller에서 .jsp로 데이터를 전송하는 역할.
	@RequestMapping(value="product/list", method=RequestMethod.GET)
	public String boardListGet(Model model, Criteria cri) {
		//model.addAttribute(attributeName(앞에것): jsp로 데이터를 보내고자 하는 변수명, attributeValue(뒤에것): jsp로 데이터를 보내고자 하는 값)
		model.addAttribute("plist",pservice.ProductList(cri));
		// boardList.jsp에 페이징 처리를 하기 위한 데이터를 boardList.jsp에 보내고자 함
		model.addAttribute("pageMaker",new PageDTO(cri, pservice.getTotalCount(cri)));
		return "product/productList";
	}
	
	//상품등록
	@RequestMapping(value="product/write", method=RequestMethod.POST)
	public String productWritePost(ProductListDTO pdto) {

		if(pdto.getAttach()!=null) {
			pdto.getAttach().forEach(attach->System.out.println(attach));
		}
		pservice.ProductWrite(pdto);
		return "redirect:/adMain";
	}
	
	//상품수정
	@RequestMapping(value="product/update", method=RequestMethod.POST)
	public String productUpdatePost(ProductListDTO pdto) {

//		if(pdto.getAttach()!=null) {
//			pdto.getAttach().forEach(attach->System.out.println(attach));
//		}
		pservice.ProductUpdate(pdto);
		return "redirect:/adMain";
	}
	
	
	//상품삭제
	@RequestMapping(value="product/delete", method=RequestMethod.POST)
	public String productDeletePost(int pno) {

		pservice.ProductDelete(pno);
		return "redirect:/adMain";
	}
	
	//제목을 클릭 했을 때, 상세내역을 보여주는 화면
	@RequestMapping(value = "product/detail", method = RequestMethod.GET)
	public String productDetailGet(int pno, Model model) {
		model.addAttribute("pdetail",pservice.ProductDetail(pno));
		return "product/productDetail";
	}
	
	@RequestMapping(value="product/attach", produces=MediaType.APPLICATION_JSON_UTF8_VALUE, method=RequestMethod.GET)
	public ResponseEntity<ArrayList<AttachFileDTO>> getAttachList(int pno){
		System.out.println(pno);
		//bservice.AttachList(pno);
		return new ResponseEntity<>(pservice.AttachList(pno),HttpStatus.OK);
	}
	
	//장바구니목록 셀렉트해오기
	@RequestMapping(value="product/shopping", method=RequestMethod.GET)
	public String productShoppingGet(@RequestParam("id") String id, Model model,ShoppingDTO sdto) {
		
		model.addAttribute("slist",pservice.ProductShoppingList(sdto));
		
		return "product/productShopping";
	}
	
	//장바구니에 인설트
	@RequestMapping(value="product/shopping", method=RequestMethod.POST)
	public String productShoppingPost(RedirectAttributes redirect, ShoppingDTO sdto) {
		pservice.ProductShopping(sdto);
		redirect.addAttribute("id", sdto.getId());
		
		return "redirect:/product/shopping";

	}
	
	//장바구니 딜리트
	@RequestMapping(value="product/shoppingDelete", method=RequestMethod.GET)
	public String productShoppingDelete(RedirectAttributes redirect, int sno, String id) {
		
		pservice.ProductShoppingDelete(sno);
		redirect.addAttribute("id", id);
		return "redirect:/product/shopping";
	}
	
	
	
	
	
	
}
