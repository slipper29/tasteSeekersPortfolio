package org.finders.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.finders.model.MemberDTO;
import org.finders.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@Autowired
	MemberService mservice;
	
	//멤버화면으로 감
	@RequestMapping(value = "sub_member", method = RequestMethod.GET)
	public void member() {}
	
	// 회원가입
	@RequestMapping(value="sub_member", method=RequestMethod.POST)
	public String memberPost(MemberDTO mdto) {
		mservice.MemberInsert(mdto);
		return "redirect:/sub_login";
	}
	
	//회원정보삭제
	@RequestMapping(value="member/delete", method=RequestMethod.POST)
	public String memberDeletePost(String id) {
		mservice.MemberDelete(id);
		return "redirect:/adMain";
	}
	
	//회원 관리자권한 부여
	@RequestMapping(value="member/adminUpdate", method=RequestMethod.POST)
	public String adminUpdatePost(String id) {
		mservice.adminUpdate(id);
		return "redirect:/adMain";
	}
	
	// 로그인하기
	@RequestMapping(value="sub_login", method=RequestMethod.POST)
	//HttpSession: 세션을 사용하겠다.
	public String loginPost(MemberDTO mdto,HttpSession session, Model model) {
		
		String result="";
		MemberDTO log = mservice.Login(mdto);
		if(log!=null) {
			//session영역에 select(mservice.Login(mdto))된 결과 member변수에 저장
			//select(mservice.Login(mdto))된 결과가 있으면(null아니면)
			session.setAttribute("session", mservice.Login(mdto));//name:변수이름정하기, value:셀렉트한 값
			model.addAttribute("member",mservice.Login(mdto));
			//메인페이지로 이동(index.jsp)...
			result="redirect:/";
		} else { 
			//그렇지 않으면(select(mservice.Login(mdto))된 결과가 없으면) - null이면
			//로그인 페이지(member/login.jsp)로 이동
			
			result="redirect:/sub_login_fail";

		}
		return result;
		
	}
	
	//로그아웃
	@RequestMapping(value="member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
