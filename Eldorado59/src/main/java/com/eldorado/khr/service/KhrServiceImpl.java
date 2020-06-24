package com.eldorado.khr.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eldorado.khr.dao.KhrDAOImpl;

@Service
public class KhrServiceImpl implements KhrService{

	@Inject
	private KhrDAOImpl dao;
	
	@Override
	public int updateMember(Map<String, Object> user) {
		
		System.out.println("service update : " + user);
		dao.updateMember(user);
		
		return 0;
	}

	@Override
	public int deleteMember(Map<String, Object> user) {
		
		System.out.println("service delete : " + user);
		dao.deleteMember(user);
		
		return 0;
	}

	@Override
	public Map<String, Object> getMember(String id) {
		// TODO Auto-generated method stub
		
		
		return dao.getMember(id);
	}
	
	

	
	
	
	
}
