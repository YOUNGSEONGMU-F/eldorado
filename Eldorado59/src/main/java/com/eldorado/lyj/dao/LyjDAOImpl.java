package com.eldorado.lyj.dao;


import java.util.HashMap;
import java.util.List;
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


	@Override
	public List<Map<String, Object>> bringthetheaters() {
		
		return session.selectList("lyj.bringTheaters");
	}


	@Override
	public List<Map<String, Object>> bringEachTheaters(Map<String, Object> map) {
		System.out.println("map  DAO: "+map);
		
		return session.selectList("lyj.bringEachTheaters",map);
	}


	@Override
	public List<Map<String, Object>> bringReservations(String id) {
		
		System.out.println(" 예매내역 dao : "+id);
		
		
		return session.selectList("lyj.bringReservations", id);
	}


	@Override
	public int CancelMovieTicket(String id,String reserv_num) {
		System.out.println(" 예매취소하기 dao : "+id);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("id", id);
		map.put("reserv_num", reserv_num);
		return session.delete("lyj.CancelMovieTicket", map);
	}
	
	
	
	
	
}
