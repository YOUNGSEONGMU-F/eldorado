package com.eldorado.lsy.service;


import lombok.RequiredArgsConstructor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eldorado.lsy.MoviesApiController;
import com.eldorado.lsy.dto.MoviesResponseDto;

@RequiredArgsConstructor
@Service
public class MoviesService {
	
	private static final Logger logger = LoggerFactory.getLogger(MoviesApiController.class);

	private final MovieApiClient movieApiClient = new MovieApiClient();

	@Transactional(readOnly = true)
	public MoviesResponseDto findByKeyword(String keyword) {
		logger.info("/영화검색 MoviesService 실행! 키워드:"+ keyword);
		return movieApiClient.requestMovie(keyword);
	}
}
