package com.eldorado.khr.service;

import java.util.Map;

public interface KhrService {
	
	// 회원정보 수정
	public int updateMember(Map<String, Object> user);
	
	// 회원정보 삭제
	public int deleteMember(Map<String, Object> user);
	
	
}
