package org.finders.model;

public class AttachFileDTO {
	// 파일이름
	private String fileName;
	// 파일경로
	private String uploadPath;
	// UUID
	private String uuid;
	// image여부
	private boolean image;
	// pno
	private int pno;
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public boolean getImage() {
		return image;
	}
	public void setImage(boolean image) {
		this.image = image;
	}
	
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	
	@Override
	public String toString() {
		return "AttachFileDTO [fileName=" + fileName + ", uploadPath=" + uploadPath + ", uuid=" + uuid + ", image="
				+ image + ", pno=" + pno + "]";
	}
	
	
}
