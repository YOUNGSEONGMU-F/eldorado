package com.eldorado.lsy;

import com.eldorado.lsy.dto.MoviesResponseDto;
import com.eldorado.lsy.service.MoviesService;

import lombok.RequiredArgsConstructor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/*")
public class MoviesApiController {
	private final MoviesService moviesService = new MoviesService();
	private static final Logger logger = LoggerFactory.getLogger(MoviesApiController.class);
	@GetMapping("/api/v1/movies/{keyword}")
	public MoviesResponseDto get(@PathVariable String keyword) {
		logger.info("/영화검색 MoviesApiController 실행! 키워드:"+ keyword);
		return moviesService.findByKeyword(keyword);
	}
}
