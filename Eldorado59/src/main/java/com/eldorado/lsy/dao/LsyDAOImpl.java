package com.eldorado.lsy.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;



@Repository
public class LsyDAOImpl implements LsyDAO{
	private static final Logger logger = LoggerFactory.getLogger(LsyDAOImpl.class);

	
	//디비 접속
	@Resource(name="sqlSession")
	 private SqlSession session;
	
@Override
public void registMovie(List<Object> list) throws Exception {
	// DB 영화 등록
	int movie_count;
	logger.info("@ DAOImpl : 객체 호출-> Mapper");
	movie_count=session.selectOne("lsy.countRegisteredMovies");
		for(int i=0; i<list.size();i++) {		
		Map<String,Object> map = new HashMap<String, Object>();
		
		//글 개수 가져와서 movie_id생성
		map.put("movie_id", "M_"+String.format("%04d",(movie_count+1))+i);
		
		//Map에 오브젝트(movie_id,영화정보) 담기
		map.put("object",list.get(i));
		logger.info("@@ 전달정보"+map);				
		//등록
		session.insert("lsy.registerMovies",map);		
		
		logger.info("@@@ 영화등록 완료");				
		}
}
@Override
public int countRegisteredMovie() throws Exception {
	logger.info("@ DAOImpl : countRegisteredMovie 실행");
	return session.selectOne("lsy.countRegisteredMovies");
}

// DB 영화 목록 가져오기
@Override
public List<Map<String, Object>> movieListAll() throws Exception {
	logger.info("@ DAOImpl : movieListAll 실행");
	return session.selectList("lsy.movieListAll");
}

// 영화목록 : 조건(상영,평점순)
@Override
public List<Map<String, Object>> movieListCri() throws Exception {
	logger.info("@ DAOImpl : movieListCri 실행");
	return session.selectList("lsy.movieListCri");
}

// 개별 영화 상세
@Override
public Map<String, Object> readMovie(String movie_id) throws Exception {
	logger.info("@ DAOImpl : readMovie 실행");
	
	 Map<String, Object> about_movie = session.selectOne("lsy.readMovie",movie_id);
	return about_movie;
}

// 영화 상세 =>수정(modify)
@Override
public void modifyMovie(Map<String, Object> map) throws Exception {
	logger.info("@ DAOImpl : modifyMovie 실행"+map);	
	session.update("lsy.modifyMovie", map);
	
	logger.info("@@ 수정 완료! ");
	
}

// 영화 삭제
@Override
public void deleteMovie(String movie_id) throws Exception {
	logger.info("@ DAOImpl : deleteMovie 실행"+movie_id);	
	session.update("lsy.deleteMovie", movie_id);
	
	logger.info("@@ 삭제 완료! ");
	
}

// 매거진 등록
@Override
public void registerMagazine(Map<String, Object> mgz) throws Exception {
	logger.info("@ DAOImpl :  실행"+ mgz);	
	
     logger.info("@ mgz_img tag 처리, src DB저장");	
     //System.out.println(mgz.get("content"));
     
     String img_tag = mgz.get("content").toString();
     
     Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		//List<String> result = new ArrayList<String>();
     	String result ="";
		Matcher matcher = pattern.matcher(img_tag);
		while (matcher.find()) {
		//	result.add(matcher.group(1));
			result += matcher.group(1)+ ",";
		}
		//System.out.println(result);
		mgz.put("mgz_img", result);
		logger.info("mgz 정보:"+mgz);

	session.insert("lsy.registerMagazine", mgz);
	
//	logger.info("@@ 매거진 등록 test중! ");
	logger.info("@@ 매거진 등록 완료! ");
	
}

// 매거진 리스트 실행
@Override
public List<Map<String, Object>> magazineList() throws Exception {
	logger.info("@ DAOImpl : magazineList 실행");
	return session.selectList("lsy.magazineList");
}

// 매거진 읽기
@Override
public Map<String, Object> readMagazine(int mgz_num) throws Exception {
	logger.info("@ DAOImpl : readMagazine 실행");
	Map<String, Object> magazine = session.selectOne("lsy.readMagazine", mgz_num);
	
	return magazine;
}

// 매거진 수정
@Override
public void updateMagazine(Map<String, Object> mgz) throws Exception {
	logger.info("@ DAOImpl :  실행"+ mgz);	
	
  logger.info("@ mgz_img tag 처리, src DB저장");	
  
  String img_tag = mgz.get("content").toString();
  
  Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
  	String result ="";
		Matcher matcher = pattern.matcher(img_tag);
		while (matcher.find()) {
			result += matcher.group(1)+ ",";
		}
		mgz.put("mgz_img", result);
		logger.info("mgz 정보:"+mgz);

	session.update("lsy.updateMagazine", mgz);
	
  	logger.info("@@ 매거진 수정 test중! ");
	
}

// 매거진 삭제
@Override
public void deleteMagazine(int mgz_num) throws Exception {
	logger.info("@ DAOImpl : deleteMagazine 실행");
	session.delete("lsy.deleteMagazine", mgz_num);
	
}

}
