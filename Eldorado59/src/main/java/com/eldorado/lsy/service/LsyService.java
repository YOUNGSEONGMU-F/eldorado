package com.eldorado.lsy.service;

import java.util.List;
import java.util.Map;

public interface LsyService {
	
	// ----------------- 영화
	
	// 영화 등록
	public void registMovie(List<Object> list) throws Exception;
	
	// 등록된 영화 개수 카운트
	public int countRegisteredMovie() throws Exception;
	
	// 영화 전체 목록 가져오기
	public List<Map<String,Object>> movieListAll() throws Exception;
	
	// 영화 목록(조건:상영,평점) 가져오기
	public List<Map<String,Object>> movieListCri() throws Exception;
	
	// 개별 영화 상세
	public Map<String,Object> readMovie(String movie_id) throws Exception;
	
	// 영화 상세 수정(modify)
	public void modifyMovie(Map<String,Object> map) throws Exception ;
	
	// 영화 삭제(delete)
	public void deleteMovie(String movie_id) throws Exception;

	// 영화 (dataLoad)
	public void GetAPImovieCode(Map<String,Object> map) throws Exception;
	

	
	// ----------------- 매거진
	
	// 매거진 등록
	public void registerMagazine(Map<String,Object> mgz) throws Exception ;
	
	// 매거진 전체 목록 가져오기
	public List<Map<String,Object>> magazineList() throws Exception;
	
	// 매거진 읽기 readMagazine()
	public Map<String,Object> readMagazine(int mgz_num) throws Exception;
	
	// 매거진 수정
	public void updateMagazine(Map<String,Object> mgz) throws Exception ;

	// 매거진 삭제
	public void deleteMagazine(int mgz_num) throws Exception;
	
	

}




