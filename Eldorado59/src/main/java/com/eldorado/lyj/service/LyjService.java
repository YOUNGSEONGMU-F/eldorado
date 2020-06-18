package com.eldorado.lyj.service;

import java.util.Map;

public interface LyjService {

	//회원가입하기
	public int insertMember(Map<String, Object> user);
	//로그인
	
	public String getPass(Map<String,Object> map);
}
