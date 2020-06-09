package com.eldorado.jsa;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="jsa/*")
public class JsaController {
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_lyj(Locale locale, Model model) {
	
		return "home";
	}
}
