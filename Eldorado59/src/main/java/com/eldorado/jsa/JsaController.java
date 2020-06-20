package com.eldorado.jsa;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="MovieInfo/*")
public class JsaController {
	private static final
	Logger logger = LoggerFactory.getLogger(JsaController.class);
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_lyj(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "BoxOfficeRank", method = RequestMethod.GET)
	public String BoxOfficeRank(Locale locale, Model model) {
		logger.info("/BoxOfficeRank 실행");
		return "jsa/BoxOfficeRank";
	}
	
	@RequestMapping(value = "FestivalMovie", method = RequestMethod.GET)
	public String FestivalMovie(Locale locale, Model model) {
		logger.info("/FestivalMovie 실행");
		return "jsa/FestivalMovie";
	}
	
	@RequestMapping(value = "NowPlayRank", method = RequestMethod.GET)
	public String NowPlayRank(Locale locale, Model model) {
		logger.info("/NowPlayRank 실행");
		return "jsa/NowPlayRank";
	}
	
	@RequestMapping(value = "Index", method = RequestMethod.GET)
	public String Index(Locale local, Model model) {
		logger.info("/Index 실행");
		return "jsa/Index";
	}
	
	
	
	
	
	
	
	
	
}
