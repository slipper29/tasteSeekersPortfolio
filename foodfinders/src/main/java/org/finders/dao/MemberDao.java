package org.finders.dao;

import org.finders.model.MemberDTO;

public interface MemberDao {
	
	//회원가입
	public void MemberInsert(MemberDTO mdto);
	
	//로그인
	public MemberDTO Login(MemberDTO mdto);
	
	//회원삭제
	public void MemberDelete(String id);
	
	//회원 관리자권한 부여
	public void adminUpdate(String id);
}
