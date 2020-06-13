package com.eldorado.lsy;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="Main/*")
public class LsyController {
	private static final
	Logger logger = LoggerFactory.getLogger(LsyController.class);
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "home";
	}

	/*
	 * @RequestMapping(value = "header", method = RequestMethod.GET) public String
	 * header(Locale locale, Model model) { logger.info("/header �ּ� ����");
	 * 
	 * return "lsy/header"; }
	 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("/main �ּ� ����");
		
		return "lsy/main";
	}
}
