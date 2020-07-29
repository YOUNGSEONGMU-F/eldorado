package com.eldorado.lsy.service;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eldorado.lsy.dao.LsyDAOImpl;

@Service
public class LsyServiceImpl implements LsyService{
	private static final Logger logger = LoggerFactory.getLogger(LsyServiceImpl.class);

	@Inject
	private LsyDAOImpl dao;
	

	@Override
	public void registMovie(List<Object> list) throws Exception {
		// 컨트롤러에 요청 받아서 DAO로 전달
		// registMovie 호출
		logger.info("@ Service : 영화등록 동작 실행-> DAO 메서드 호출");
				dao.registMovie(list);
		logger.info("@@ DAO : 영화등록 처리 완료!");
	}
	@Override
	public int countRegisteredMovie() throws Exception {
		// countRegisteredMovie 호출
		logger.info("@ service : countRegisteredMovie 구현 -> DAO 이동");
		return dao.countRegisteredMovie();
	}
	
	// 등록된 영화목록 가져오기
	@Override
	public List<Map<String, Object>> movieListAll() throws Exception {
		logger.info("@ Service : 영화목록 동작 실행-> DAO 메서드 호출");
		List<Map<String,Object>>movieList=dao.movieListAll();
		logger.info("@ DAO : 처리완료. 결과 컨트롤러 전달");
		return movieList;
	}
	
	// 조건 만족하는 영화목록
	@Override
	public List<Map<String, Object>> movieListCri() throws Exception {
		logger.info("@ Service : 영화목록 동작 실행-> DAO 메서드 호출");
		List<Map<String,Object>>movieListCri=dao.movieListCri();
		logger.info("@ DAO : 처리완료. 결과 컨트롤러 전달");
		return movieListCri;
	}
	
	// 개별 영화 정보
	@Override
	public Map<String, Object> readMovie(String movie_id) throws Exception {
		logger.info("@ Service : 개별 영화 정보 동작 실행-> DAO 메서드 호출");
		Map<String,Object>about_movie=dao.readMovie(movie_id);
		logger.info("@ DAO : 처리완료. 결과 컨트롤러 전달");
		return about_movie;
	}
	
	// 영화 상세 =>  수정
	@Override
	public void modifyMovie(Map<String, Object> map) throws Exception {
		logger.info("@ Service : 영화 수정 동작 실행-> DAO 메서드 호출");
		dao.modifyMovie(map);
		logger.info("@ DAO : 처리완료. 결과 컨트롤러 전달");
		
	}
	
	// 영화 삭제
	@Override
	public void deleteMovie(String movie_id) throws Exception {
		logger.info("@ Service : 영화 삭제 동작 실행-> DAO 메서드 호출");
		

		
		dao.deleteMovie(movie_id);
		logger.info("@ DAO : 처리완료. 결과 컨트롤러 전달");
		
	}
}
