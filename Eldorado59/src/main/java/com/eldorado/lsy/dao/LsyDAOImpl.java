package com.eldorado.lsy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eldorado.lsy.service.LsyServiceImpl;



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
		session.insert("lsy.registMovies",map);		
		
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

@Override
public void deleteMovie(String movie_id) throws Exception {
	logger.info("@ DAOImpl : deleteMovie 실행"+movie_id);	
	session.update("lsy.deleteMovie", movie_id);
	
	logger.info("@@ 삭제 완료! ");
	
}

}
