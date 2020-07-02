package com.eldorado.lyj.service;

import java.util.Map;

public interface LyjService {

	//회원가입하기
	public int insertMember(Map<String, Object> user);
	//로그인
	public String getPass(Map<String,Object> map);
	//아이디찾기
	public String searchId(String name, String email);
	

	public boolean send(String subject, String text, String from, String to, String filePath);

	
}
