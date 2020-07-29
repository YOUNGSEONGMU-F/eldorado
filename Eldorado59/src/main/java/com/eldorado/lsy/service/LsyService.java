package com.eldorado.lsy.service;

import java.util.List;
import java.util.Map;

public interface LsyService {
	//글쓰기
	public void registMovie(List<Object> list) throws Exception;
	
	//등록된 영화 개수 카운트
	public int countRegisteredMovie() throws Exception;
	
	//영화 전체 목록 가져오기
	public List<Map<String,Object>> movieListAll() throws Exception;
	
	//영화 목록(조건:상영,평점) 가져오기
	public List<Map<String,Object>> movieListCri() throws Exception;
	
	// 개별 영화 상세
	public Map<String,Object> readMovie(String movie_id) throws Exception;
	
	// 영화 상세 수정(modify)
	public void modifyMovie(Map<String,Object> map) throws Exception ;
	
	// 영화 삭제(delete)
	public void deleteMovie(String movie_id) throws Exception;

	
}




