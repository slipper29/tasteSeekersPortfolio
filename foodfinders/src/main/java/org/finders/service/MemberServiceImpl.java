package org.finders.service;

import org.finders.dao.MemberDao;
import org.finders.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao mdao;
	
	//회원가입 화면에서 회원가입 버튼 클릭시 mas_member테이블에 insert작업
	public void MemberInsert(MemberDTO mdto) {
		mdao.MemberInsert(mdto);
	}
	
	//로그인 화면에서 로그인 버튼을 클릭했을때 mas_member테이블에 select
	public MemberDTO Login(MemberDTO mdto) {
		return mdao.Login(mdto);
	}
	
	//회원삭제
	public void MemberDelete(String id) {
		mdao.MemberDelete(id);
	}
	
	//회원 관리자권한 부여
	public void adminUpdate(String id) {
		mdao.adminUpdate(id);
	}
}
