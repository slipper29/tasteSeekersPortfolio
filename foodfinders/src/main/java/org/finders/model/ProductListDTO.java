package org.finders.model;

import java.util.ArrayList;

import org.finders.model.AttachFileDTO;

public class ProductListDTO {
	private int pno;
	private String pname;
	private int pprice;
	private String pcategory;
	private String pmaincategory;
	private String pcontent;
	
	private ArrayList<AttachFileDTO> attach;
	
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
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	
	public String getPmaincategory() {
		return pmaincategory;
	}
	public void setPmaincategory(String pmaincategory) {
		this.pmaincategory = pmaincategory;
	}
	
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public ArrayList<AttachFileDTO> getAttach() {
		return attach;
	}
	public void setAttach(ArrayList<AttachFileDTO> attach) {
		this.attach = attach;
	}
	
	@Override
	public String toString() {
		return "ProductListDTO [pno=" + pno + ", pname=" + pname + ", pprice=" + pprice + ", pcategory=" + pcategory
				+ ", pmaincategory=" + pmaincategory + ", pcontent=" + pcontent + "]";
	}
	
	
}
