package org.finders.model;

public class Criteria {
		// 검색 종류(제목, 내용...)
		private String type;
		// 검색어(키워드)
		private String keyword;
		// pagenum
		private int pagenum;
		// 한페이지 당 보여주는 건수
		private int amount;
		
		private String pcategory;
		
		//생성자를 이용한 초기화
		Criteria(){
			this(1,20);
		}
		
		Criteria(int pagenum, int amount){
			this.pagenum=pagenum;
			this.amount=amount;
		}
		
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		public int getPagenum() {
			return pagenum;
		}
		public void setPagenum(int pagenum) {
			this.pagenum = pagenum;
		}
		public int getAmount() {
			return amount;
		}
		public void setAmount(int amount) {
			this.amount = amount;
		}
		
		public String getPcategory() {
			return pcategory;
		}

		public void setPcategory(String pcategory) {
			this.pcategory = pcategory;
		}

		@Override
		public String toString() {
			return "Criteria [type=" + type + ", keyword=" + keyword + ", pagenum=" + pagenum + ", amount=" + amount + "]";
		}
}
