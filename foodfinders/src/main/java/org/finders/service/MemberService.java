package org.finders.service;

import org.finders.model.MemberDTO;

public interface MemberService {
	//회원가입 화면에서 회원가입 버튼을 클릭했을때 mas_member테이블 insert
	public void MemberInsert(MemberDTO mdto);
	//로그인 화면에서 로그인 버튼을 클릭했을때 mas_member테이블에 select
	public MemberDTO Login(MemberDTO mdto);
	
	//회원삭제
	public void MemberDelete(String id);
	
	//회원 관리자권한 부여
	public void adminUpdate(String id);
	
	
}
