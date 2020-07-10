package com.eldorado.lyj.dao;


import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

@Repository
public class LyjDAOImpl implements LyjDAO{

	@Resource(name="sqlSession")
	private SqlSession session;
	

	@Override
	public int insertmember(Map<String, Object> user) {
		System.out.println(" dao : "+user);
		
		
		return session.insert("lyj.insertMember",user);
		
	}


	@Override
	public String getPass(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return session.selectOne("lyj.getPass",map);
		
	}

	@Override

	public void newPassword(Map<String, Object> map) {

		
		session.update("lyj.newPassword", map);

	}


	@Override
	public String findIdresult(String userEmail) {
		System.out.println("find아이디 :"+userEmail);
		
		
		return session.selectOne("lyj.idfind",userEmail);
	}
	
	
	
}
