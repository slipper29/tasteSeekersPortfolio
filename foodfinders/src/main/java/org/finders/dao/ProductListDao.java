package org.finders.dao;

import java.util.ArrayList;

import org.finders.model.Criteria;
import org.finders.model.ProductListDTO;
import org.finders.model.ShoppingDTO;
import org.finders.model.AttachFileDTO;

public interface ProductListDao {
	
	//상품 등록(insert)
	public void ProductWrite(ProductListDTO pdto);
	
	//상품 수정
	public void ProductUpdate(ProductListDTO pdto);
	
	//상품 삭제
	public void ProductDelete(int pno);
		
	//게시판 목록리스트(select : 값을 받아오는게 없기에 매개변수 X, select 여러건 : 값을 하나만 저장하면 안되고 배열의 형태로 싹 다 가져와야하기때문에 ArrayList 타입은 제네릭으로 BoardDTO)
	public ArrayList<ProductListDTO> ProductList(Criteria cri);
	
	//게시판 상세내용
	public ProductListDTO ProductDetail(int pno);
	
	//게시판 목록 리스트에서 페이징 처리를 하기 위해서 필요한 전체건수.
	public int getTotalCount(Criteria cri);
	
	//상세 내용 화면에 첨부파일 목록 리스트 조회
	public ArrayList<AttachFileDTO> attachList(int pno);
	
	//장바구니
	public void ProductShopping(ShoppingDTO sdto);
	
	//장바구니 목록 셀렉트
	public ArrayList<ShoppingDTO> ProductShoppingList(ShoppingDTO sdto);
	
	//장바구니 딜리트
	public void ProductShoppingDelete(int sno);
	
	//관리자페이지 상품정보 셀렉트
	public ArrayList<ProductListDTO> ProductAdmin(ProductListDTO pdto);
}