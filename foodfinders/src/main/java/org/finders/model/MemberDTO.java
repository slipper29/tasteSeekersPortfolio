package org.finders.model;

public class MemberDTO {
	
	// id
	private String id;
	
	// 비밀번호
	private String pw;
	
	// 이름
	private String name;
	
	//생년월일
	private String birth;
	
	// 성별
	private String gender;
	
	// 이메일
	private String email;
	
	//주소
	private String address;
	
	private boolean adminCheck;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isAdminCheck() {
		return adminCheck;
	}

	public void setAdminCheck(boolean adminCheck) {
		this.adminCheck = adminCheck;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", gender=" + gender
				+ ", email=" + email + ", address=" + address + ", adminCheck=" + adminCheck + "]";
	}
	
	
}
