package com.eldorado.lyj.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eldorado.lyj.dao.LyjDAOImpl;

@Service
public class LyjServiceImpl implements LyjService{

	@Inject
	private LyjDAOImpl dao;
	
	@Override
	public int insertMember(Map<String, Object> user) {
		System.out.println("service : "+user);
		dao.insertmember(user);
		
		return 0;
	}

	@Override
	public String getPass(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.getPass(map);
	}

	
	
	
}
