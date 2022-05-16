package org.finders.service;

import java.util.ArrayList;

import org.finders.model.AttachFileDTO;
import org.finders.model.Criteria;
import org.finders.model.ProductListDTO;
import org.finders.model.ShoppingDTO;

public interface ProductListService {
	
	//상품 등록
	public void ProductWrite(ProductListDTO pdto);
	
	//상품 수정
	public void ProductUpdate(ProductListDTO pdto);
	
	//상품 삭제
	public void ProductDelete(int pno);
		
	//게시판 목록 리스트
	public ArrayList<ProductListDTO> ProductList(Criteria cri);
	
	//게시판 목록 리스트에서 제목 클릭시 상세 내용
	public ProductListDTO ProductDetail(int pno);
	
	//게시판 목록 리스트에서 페이징 처리를 하기 위해서 필요한 전체건수.
	public int getTotalCount(Criteria cri);
	
	//상세 내용 화면에 첨부파일 목록 리스트 조회
	public ArrayList<AttachFileDTO> AttachList(int pno);
	
	//장바구니
	public void ProductShopping(ShoppingDTO sdto);
	
	//장바구니 목록 셀렉트
	public ArrayList<ShoppingDTO> ProductShoppingList(ShoppingDTO sdto);
	
	//장바구니 딜리트
	public void ProductShoppingDelete(int sno);
	
	//관리자페이지 상품정보 셀렉트
	public ArrayList<ProductListDTO> ProductAdmin(ProductListDTO pdto);
}
