package com.eldorado.khr;

import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eldorado.khr.service.KhrServiceImpl;

@Controller
@RequestMapping(value="khr/*")
public class KhrController {
	
	@Inject
	private KhrServiceImpl service;
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_khr(Locale locale, Model model) {
	
		return "home";
	}
	
	// 회원정보 수정 
	@RequestMapping(value = "updateMember", method = RequestMethod.GET)
	public String updateMember(Locale locale, Model model) {
	
		return "khr/updateMember";
	}
	
	@RequestMapping(value = "updateMember", method = RequestMethod.POST)
	public String updateMember_post(Locale locale, Model model,
			@RequestParam Map<String,Object> user) {
	
		service.updateMember(user);
		
		return "khr/updateMember";
	}
	
	// 회원정보 삭제
	@RequestMapping(value = "deleteMember", method = RequestMethod.GET)
	public String deleteMember(Locale locale, Model model) {
	
		return "khr/deleteMember";
	}
	
	@RequestMapping(value = "deleteMember", method = RequestMethod.POST)
	public String deleteMember_post(Locale locale, Model model,
			@RequestParam Map<String,Object> user) {
	
		service.deleteMember(user);
		
		return "khr/deleteMember";
	}
	
	// 비밀번호 수정
	@RequestMapping(value = "changePW", method = RequestMethod.GET)
	public String changePW(Locale locale, Model model) {
	
		return "khr/changePW";
	}
	
//	@RequestMapping(value = "changePW", method = RequestMethod.POST)
//	public String changePW_post(Locale locale, Model model,
//			@RequestParam Map<String,Object> user) {
//	
//		service.changePW(user);
//		
//		return "khr/changePW";
//	}
	
	// 마이페이지
//	@RequestMapping(value = "myPage", method = RequestMethod.GET)
//	public String myPage(Locale locale, Model model) {
//	
//		return "khr/myPage";
//	}
//	
//	@RequestMapping(value = "myPage", method = RequestMethod.POST)
//	public String myPage_post(Locale locale, Model model,
//			@RequestParam Map<String,Object> user) {
//	
//		service.deleteMember(user);
//		
//		return "khr/myPage";
//	}
	
	
	
}
