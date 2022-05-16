package org.finders.service;

import java.util.ArrayList;

import org.finders.dao.ProductAttachDao;
import org.finders.dao.ProductListDao;
import org.finders.model.Criteria;
import org.finders.model.ProductListDTO;
import org.finders.model.ShoppingDTO;
import org.finders.model.AttachFileDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductListServiceImpl implements ProductListService {
	@Autowired
	ProductListDao pdao;
	
	@Autowired
	ProductAttachDao attachdao;
	
	//상품등록
	public void ProductWrite(ProductListDTO pdto) {
		//로직
		pdao.ProductWrite(pdto);
		
		// 파일첨부가 없으면 아래 로직은 실행하지 마세요
		if(pdto.getAttach()==null) {
			return;
		}
		
		pdto.getAttach().forEach(attach->{
			// ProductListDTO에 있는 pno를 가져와서 AttachFileDTO에 pno에 저장
			attach.setPno(pdto.getPno());
			attachdao.ProductAttachWrite(attach);
		});
	}
	
	//상품 수정
	public void ProductUpdate(ProductListDTO pdto) {
		//로직
		pdao.ProductUpdate(pdto);
		
		
		// 파일첨부가 없으면 아래 로직은 실행하지 마세요
		if(pdto.getAttach()==null) {
			return;
		}
		
//		pdto.getAttach().forEach(attach->{
//			// ProductListDTO에 있는 pno를 가져와서 AttachFileDTO에 pno에 저장
//			attach.setPno(pdto.getPno());
//			attachdao.ProductAttachWrite(attach);
//		});
	}
	
	//상품 삭제
	public void ProductDelete(int pno) {
		pdao.ProductDelete(pno);
	}
		
	//게시판 목록 리스트
	public ArrayList<ProductListDTO> ProductList(Criteria cri){
		return pdao.ProductList(cri);
	}
	
	//게시판 목록 리스트에서 제목 클릭시 상세 내용
	public ProductListDTO ProductDetail(int pno) {
		return pdao.ProductDetail(pno);
	}
	
	//게시판 목록 리스트에서 페이징 처리를 하기 위해서 필요한 전체건수.
	public int getTotalCount(Criteria cri) {
		return pdao.getTotalCount(cri);
	}
	
	//상세 내용 화면에 첨부파일 목록 리스트 조회
	public ArrayList<AttachFileDTO> AttachList(int pno){
		System.out.println(pno);
		return pdao.attachList(pno);
	}
	
	//장바구니 인설트
	public void ProductShopping(ShoppingDTO sdto) {
		pdao.ProductShopping(sdto);
	}
	
	//장바구니목록 셀렉트
	public ArrayList<ShoppingDTO> ProductShoppingList(ShoppingDTO sdto){
		return pdao.ProductShoppingList(sdto);
	}
	
	//장바구니 딜리트
	public void ProductShoppingDelete(int sno) {
		pdao.ProductShoppingDelete(sno);
	}
	
	//관리자페이지 상품정보 셀렉트
	public ArrayList<ProductListDTO> ProductAdmin(ProductListDTO pdto){
		return pdao.ProductAdmin(pdto);
	}
}
