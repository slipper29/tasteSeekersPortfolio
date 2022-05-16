package org.finders.controller;

import java.util.Locale;

import org.finders.model.Criteria;
import org.finders.model.ProductListDTO;
import org.finders.service.MemberService;
import org.finders.service.ProductListService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	@Autowired
	MemberService mservice;
	
	@Autowired
	ProductListService pservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "index";
	}
	
	@RequestMapping(value = "sub_cscenter", method = RequestMethod.GET)
	public String cscenter() {
	
		return "sub_cscenter";
	}
	
	@RequestMapping(value = "sub_ev", method = RequestMethod.GET)
	public String ev() {
	
		return "sub_ev";
	}
	
	@RequestMapping(value = "sub_login", method = RequestMethod.GET)
	public String login() {
	
		return "sub_login";
	}
	
	@RequestMapping(value = "sub_login_fail", method = RequestMethod.GET)
	public String loginFail() {
	
		return "sub_login_fail";
	}
	
	@RequestMapping(value = "adMain", method = RequestMethod.GET)
	public String adMain(Model model, ProductListDTO pdto) {
		model.addAttribute("plist",pservice.ProductAdmin(pdto));
		return "admin/adMain";
	}
	
}
