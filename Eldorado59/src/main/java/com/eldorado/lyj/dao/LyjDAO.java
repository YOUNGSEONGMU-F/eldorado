package com.eldorado.lyj.dao;

import java.util.List;
import java.util.Map;

public interface LyjDAO {

	
	//회원가입
	public int insertmember(Map<String, Object> user);
	
	//로그인
	public String getPass(Map<String,Object> map);
	
	public void newPassword(Map<String,Object> map) throws Exception;

	//아이디찾기
	public String findIdresult(String userEmail);

	//영화관가져오기
	public List<Map<String, Object>> bringthetheaters();
	
	//지역 영화관 가져오기
	public List<Map<String, Object>> bringEachTheaters(Map<String,Object> map);
	
	//예매한 내역 가져오기
	public List<Map<String, Object>> bringReservations(String id);
	
	//예매취소
	public int CancelMovieTicket(String id, String reserv_num);
	
}
