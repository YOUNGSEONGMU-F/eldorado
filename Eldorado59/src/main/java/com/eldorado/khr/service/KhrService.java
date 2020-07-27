package com.eldorado.khr.service;

import java.util.Map;

public interface KhrService {
	
	//로그인(임시)
	public String getPass(Map<String,Object> map);
	
	// 회원정보 수정
	public int updateMember(Map<String, Object> user);
	
	// 회원정보 삭제
	public int deleteMember(Map<String, Object> user);
	
	//회원정보 가져오기
	public Map<String, Object> getMember(String id); 
//	public int getMember(Map<String, Object> getMember);
	
	
	//예매 완료
	public int insertReserve(Map<String, Object> reserve);

}
