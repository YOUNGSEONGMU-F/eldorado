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
	
	
	
	
	
}
