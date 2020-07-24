package com.eldorado.lyj.service;

import java.util.List;
import java.util.Map;

public interface LyjService {

	//회원가입하기
	public int insertMember(Map<String, Object> user);
	//로그인
	public String getPass(Map<String,Object> map);
	//아이디찾기
	public String searchId(String name, String email);
	

	public boolean send(String subject, String text, String from, String to, String filePath);

	//비밀번호찾기
	public void newPassword(Map<String,Object> map) throws Exception;
	//아이디찾기
	public String findIdresult(String userEmail);
	
	//영화관가져오기
	public List<Map<String, Object>> bringthetheaters();
	
	//지역에 따른 영화관이름 가져오기
	public List<Map<String, Object>> bringEachTheaters(Map<String,Object> map);
	
	//예매한 내역 가져오기
	public List<Map<String, Object>> bringReservations(String id);
	
	
}
