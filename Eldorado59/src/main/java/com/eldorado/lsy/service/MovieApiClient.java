package com.eldorado.lsy.service;

import lombok.RequiredArgsConstructor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.eldorado.lsy.MoviesApiController;
import com.eldorado.lsy.dto.MoviesResponseDto;

@RequiredArgsConstructor
@Service
public class MovieApiClient {
	
	private static final Logger logger = LoggerFactory.getLogger(MoviesApiController.class);

	private final RestTemplate restTemplate = new RestTemplate();
	private final String CLIENT_ID = "oC_BfOHGSoGV6Su0A9vI";
	private final String CLIENT_SECRET = "3zkxxwHQaE";
	private final String OpenNaverMovieUrl_getMovies = "https://openapi.naver.com/v1/search/movie.json?query={keyword}";

	public MoviesResponseDto requestMovie(String keyword) {
		logger.info("/영화검색 MovieApiClient 실행! 키워드:"+ keyword);
		
		final HttpHeaders headers = new HttpHeaders();
		// 헤더에 key들을 담아준다. 
		headers.set("X-Naver-Client-Id", CLIENT_ID);
		headers.set("X-Naver-Client-Secret", CLIENT_SECRET);
		final HttpEntity<String> entity = new HttpEntity<>(headers);
		//logger.info("/헤더 로그:"+ entity + "키워드:" + keyword );
		logger.info("/MoviepiClient 실행!" );
		return restTemplate.exchange(OpenNaverMovieUrl_getMovies, HttpMethod.GET, entity, MoviesResponseDto.class, keyword).getBody();
	}
}
