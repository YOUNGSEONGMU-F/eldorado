package com.eldorado.khr.dao;

import java.util.Map;

public interface KhrDAO {
	
	// 로그인(임시)
	public String getPass(Map<String,Object> map);
	
	// 회원정보 수정
	public int updateMember(Map<String, Object> user);
	
	// 회원정보 삭제
	public int deleteMember(Map<String, Object> user);
	

	//회원정보 가져오기
	public Map<String, Object> getMember(String id);

}
