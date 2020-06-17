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

	
	
}
