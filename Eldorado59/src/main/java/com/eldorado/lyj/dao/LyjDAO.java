package com.eldorado.lyj.dao;

import java.util.Map;

public interface LyjDAO {

	
	//회원가입
	public int insertmember(Map<String, Object> user);
	
	//로그인
	
	public String getPass(Map<String,Object> map);
}
