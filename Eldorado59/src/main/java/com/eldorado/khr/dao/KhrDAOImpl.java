package com.eldorado.khr.dao;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class KhrDAOImpl implements KhrDAO{
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	@Override
	public int updatemember(Map<String, Object> user) {
		System.out.println("update dao : "+user);
		
		return session.update("khr.updateMember",user);
	}

	@Override
	public int deleteMember(Map<String, Object> user) {
		System.out.println("delete dao : " + user);
		
		return session.delete("khr.deleteMember", user);
	}

	
	
	
}
