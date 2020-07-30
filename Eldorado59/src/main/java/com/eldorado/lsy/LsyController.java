package com.eldorado.lsy;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eldorado.lsy.service.LsyService;


@Controller
@RequestMapping(value = "/*")
public class LsyController {
	private static final Logger logger = LoggerFactory.getLogger(LsyController.class);

	@Inject
	private LsyService service;


	//메인페이지
	@RequestMapping(value = "Main/index", method = RequestMethod.GET)
	public String main(Locale locale, Model model) throws Exception {
		logger.info("/main 실행");
		
		//DB 등록된 영화 가져와서 출력
		//서비스계층 메서드 호출
		List<Map<String,Object>>movieListCri=service.movieListCri();
		
		logger.info("영화 목록 가져오기 성공");
		logger.info("영화 목록: "+movieListCri );
		
		model.addAttribute("movieListCri",movieListCri);

		return "lsy/main";
	}
	
	
	  //무비인포
	  
	  @RequestMapping(value = "MovieInfo/Index", method = RequestMethod.GET) public
	  String MovieInfo(@RequestParam("mId") String movie_id, Model model) throws
	  Exception { logger.info("/MovieInfo 실행");
	  
	  //DB 등록된 영화 가져와서 출력 //서비스계층 메서드 호출
	  Map<String,Object>about_movie=service.readMovie(movie_id);
	  
	  logger.info("영화 정보 가져오기 성공"); logger.info("영화 정보: "+about_movie );
	  
	  model.addAttribute("about_movie",about_movie); return "jsa/Index"; }
	 
	
	//네이버 영화검색 API호출, 검색 및 영화등록 페이지
	@RequestMapping(value = "Movie/addMovie", method = RequestMethod.GET)
	public String addMovie() throws Exception {
		logger.info("/addMovie 실행");
		
		return "lsy/addMovie";
	}

	//addMovie 화면에서 체크 후 등록버튼 클릭-> 서비스 단으로 가서 DB에 등록
	@RequestMapping(value = "/registeMovie", method =RequestMethod.POST)
	@ResponseBody
	public String registeMovie(@RequestParam HashMap<Object, Object> param) throws Exception {
		logger.info("/registeMovie 실행");
	    try {
	        JSONArray array = new JSONArray(param.get("target").toString());  //json 배열
	        List<Object> list = array.toList(); //Object를 지닌 배열
	    logger.info("jsonArrayList:"+list);
	    logger.info("@@서비스 호출");
	        service.registMovie(list);
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "FAIL";
	    }
	    return "redirect:/Movie/movieAdmin";
	}	

	//영화등록된 영화 관리 페이지 (영화목록)
	@RequestMapping(value = "Movie/movieAdmin", method = RequestMethod.GET)
	public String movieListAllGET(Model model)throws Exception {
		logger.info("/movieAdmin 실행");
		logger.info("글 목록 페이지 요청(GET)");
		
		//DB 등록된 영화 가져와서 출력
		//서비스계층 메서드 호출
		List<Map<String,Object>>movieList=service.movieListAll();
		
		logger.info("영화 목록 가져오기 성공");
		logger.info("영화 목록: "+movieList );
		
		model.addAttribute("movieList",movieList);
		return "lsy/movieAdmin";
	}
	//영화 (조건:상영,평점순)
	@RequestMapping(value = "Movie/movieCriList", method = RequestMethod.GET)
	public String movieListCriGET(Model model)throws Exception {
		logger.info("/movieCriTest 실행");
		logger.info("movieCriTest요청(GET)");
		
		//DB 등록된 영화 가져와서 출력
		//서비스계층 메서드 호출
		List<Map<String,Object>>movieListCri=service.movieListCri();
		
		logger.info("영화 목록 가져오기 성공");
		logger.info("영화 목록: "+movieListCri );
		
		model.addAttribute("movieListCri",movieListCri);
		return "lsy/movieCriList";
	}
	//개별 영화 (상세)
	@RequestMapping(value = "Movie/readMovie", method = RequestMethod.GET)
	public String readMovieGET(@RequestParam("m_id") String movie_id, Model model)throws Exception {
		logger.info("/readMovie 실행");
		logger.info("readMovie요청(GET)");
		
		//DB 등록된 영화 가져와서 출력
		//서비스계층 메서드 호출
		Map<String,Object>about_movie=service.readMovie(movie_id);
		
		logger.info("영화 정보 가져오기 성공");
		logger.info("영화 정보: "+about_movie );
		
		model.addAttribute("about_movie",about_movie);
		return "lsy/readMovie";
	}
	//영화 상세 => 수정(post)
	@RequestMapping(value = "/modifyMovie", method = RequestMethod.POST)
	public String modifyMoviePOST(@RequestParam Map<String,Object>map) throws Exception {
		logger.info("/modifyMovie요청(POST) 실행");
		service.modifyMovie(map);
		logger.info("@@@@ controller : 영화 정보 수정 성공!!!");
		return "redirect:/Movie/movieCriList";
	}
	
	// 영화 삭제 get
	@RequestMapping(value = "deleteMovie", method = RequestMethod.GET)
	public String deleteMovieGET(@RequestParam("m_id") String movie_id) throws Exception {
		logger.info("/deleteMovie요청(POST) 실행");
		service.deleteMovie(movie_id);;
		logger.info("@@@@ controller : 영화 정보 삭제 성공!!!");
		return "redirect:/Movie/movieAdmin";
	}
	// 영화 삭제 post
	@RequestMapping(value = "/deleteMovie", method = RequestMethod.POST)
	public String deleteMoviePOST(@RequestParam String movie_id) throws Exception {
		logger.info("/deleteMovie요청(POST) 실행");
		service.deleteMovie(movie_id);;
		logger.info("@@@@ controller : 영화 정보 삭제 성공!!!");
		return "redirect:/Movie/movieAdmin";
	}
	
}
