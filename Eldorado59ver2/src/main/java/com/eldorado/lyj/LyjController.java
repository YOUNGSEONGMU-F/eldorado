package com.eldorado.lyj;

import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eldorado.lyj.service.LyjServiceImpl;

@Controller
@RequestMapping(value="lyj/*")
public class LyjController {
	
	@Inject
	private LyjServiceImpl service;
	
	
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_lyj(Locale locale, Model model) {
	
		return "home";
	}
	
	@RequestMapping(value="join",method =RequestMethod.GET)
	public String join() {
		
		return "lyj/join";
	}

	@RequestMapping(value="join",method =RequestMethod.POST)
	public String joinPOST(@RequestParam Map<String,Object> user
			
			) {
		System.out.println("join 컨트롤러 받기"+user);
		service.insertMember(user);
		
		
		return "lyj/joincheck";
	}
	
	
	
}
