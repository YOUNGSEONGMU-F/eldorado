package com.eldorado.lsy.dao;

import java.util.List;
import java.util.Map;

public interface LsyDAO {
	// 영화 등록(regist)
		public void registMovie(List<Object> list) throws Exception ;
		
	// 영화 개수 리턴
		public int countRegisteredMovie() throws Exception;
		
	// 영화 목록
		public List<Map<String,Object>> movieListAll() throws Exception;
		
	// 영화 목록(조건:상영중/랭킹순)
		public List<Map<String,Object>> movieListCri() throws Exception;
		
	// 개별 영화 상세(read)
		public Map<String,Object> readMovie(String movie_id) throws Exception;
		
	// 영화 상세 수정(modify)
		public void modifyMovie(Map<String,Object> map) throws Exception ;
		
	// 영화 삭제(delete)
		public void deleteMovie(String movie_id) throws Exception;



}
