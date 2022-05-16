package org.finders.model;

public class ShoppingDTO {
	
	//장바구니 프라이머리키
	private int sno;
	
	//회원아이디
	private String id;
	
	//회원주소
	private String address;
	
	//상품번호
	private int pno;
	
	//상품명
	private String pname;
	
	//상품가격
	private int pprice;
	
	//상품갯수
	private int pcount;

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public int getPcount() {
		return pcount;
	}

	public void setPcount(int pcount) {
		this.pcount = pcount;
	}

	@Override
	public String toString() {
		return "ShoppingDTO [sno=" + sno + ", id=" + id + ", address=" + address + ", pno=" + pno + ", pname=" + pname
				+ ", pprice=" + pprice + ", pcount=" + pcount + "]";
	}
	
}
