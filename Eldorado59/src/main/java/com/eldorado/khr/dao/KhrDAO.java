package com.eldorado.khr.dao;

import java.util.Map;

public interface KhrDAO {

	//회원정보수정
	public int updatemember(Map<String, Object> user);
	
	//회원정보삭제
	public int deleteMember(Map<String, Object> user);
	
	//마이페이지
	
	
}
