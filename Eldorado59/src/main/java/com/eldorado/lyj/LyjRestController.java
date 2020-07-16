package com.eldorado.lyj;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.eldorado.lyj.service.LyjServiceImpl;

@RestController
@RequestMapping(value = "lyj/*")
public class LyjRestController {

	@Inject
	private LyjServiceImpl service;


	@RequestMapping(value = "ajax_area", method = RequestMethod.GET)
	public @ResponseBody List<Map<String, Object>> ajax_area(@RequestParam Map<String,Object> map) {
		System.out.println("map : " + map);
		List<Map<String, Object>> EachTheaters = service.bringEachTheaters(map);
		System.out.println("지역별 영화관 : "+EachTheaters);
		
		
		return EachTheaters;
	}

	
}
