package com.eldorado.lsy;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
//		logger.info("영화 목록: "+movieListCri );
		
		model.addAttribute("movieListCri",movieListCri);
		
		
		//서비스계층 메서드 호출
		List<Map<String,Object>>magazineList=service.magazineList();
		
		logger.info("매거진 목록 가져오기 성공");
//		logger.info("매거진 목록: "+magazineList );
		
		model.addAttribute("magazineList",magazineList);

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
	 
	//메인페이지
	@RequestMapping(value = "MovieInfo/NowPlayRank", method = RequestMethod.GET)
	public String NowPlayRank(Model model) throws Exception {
		logger.info("NowPlayRank 실행");
		
		//DB 등록된 영화 가져와서 출력
		//서비스계층 메서드 호출
		List<Map<String,Object>>movieListCri=service.movieListCri();
		
		logger.info("영화 목록 가져오기 성공");
//		logger.info("영화 목록: "+movieListCri );
		
		model.addAttribute("movieListCri",movieListCri);

		return "jsa/NowPlayRank";
	}
	  
	

	//네이버 영화검색 API호출, 검색 및 영화등록 페이지
	@RequestMapping(value = "Movie/addMovie", method = RequestMethod.GET)
	public String addMovie() throws Exception {
		logger.info("/addMovie 실행");
		
		return "lsy/addMovie";
	}

	//addMovie 화면에서 체크 후 등록버튼 클릭-> 서비스 단으로 가서 DB에 등록
	@RequestMapping(value = "/registerMovie", method =RequestMethod.POST)
	@ResponseBody
	public String registerMovie(@RequestParam HashMap<Object, Object> param) throws Exception {
		logger.info("/registerMovie 실행");
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
//		logger.info("영화 목록: "+movieList );
		
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
//		logger.info("영화 목록: "+movieListCri );
		
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
//		logger.info("영화 정보: "+about_movie );
		
		model.addAttribute("about_movie",about_movie);
		return "lsy/readMovie";
	}
	//영화 상세 => 수정(post)
	@RequestMapping(value = "Movie/modifyMovie", method = RequestMethod.POST)
	public String modifyMoviePOST(@RequestParam Map<String,Object>map) throws Exception {
		logger.info("/modifyMovie요청(POST) 실행");
		service.modifyMovie(map);
		logger.info("@@@@ controller : 영화 정보 수정 성공!!!");
		return "redirect:/Movie/movieCriList";
	}
	
	// 영화 삭제 get
	@RequestMapping(value = "Movie/deleteMovie", method = RequestMethod.GET)
	public String deleteMovieGET(@RequestParam("m_id") String movie_id) throws Exception {
		logger.info("/deleteMovie요청(POST) 실행");
		service.deleteMovie(movie_id);;
		logger.info("@@@@ controller : 영화 정보 삭제 성공!!!");
		return "redirect:/Movie/movieAdmin";
	}
	// 영화 삭제 post
	@RequestMapping(value = "Movie/deleteMovie", method = RequestMethod.POST)
	public String deleteMoviePOST(@RequestParam String movie_id) throws Exception {
		logger.info("/deleteMovie요청(POST) 실행");
		service.deleteMovie(movie_id);;
		logger.info("@@@@ controller : 영화 정보 삭제 성공!!!");
		return "redirect:/Movie/movieAdmin";
	}
	//영화 => dataLoad
	@RequestMapping(value = "Movie/dataLoad", method = RequestMethod.GET)
	public String dataLoad(@RequestParam("m_id") String movie_id, @RequestParam("title") String title, @RequestParam("director") String director, @RequestParam("subtitle") String subtitle,  @RequestParam("pub_date") String pub_date) throws Exception {
		logger.info("/GetAPImovieCode요청(Get) 실행 ");
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("movie_id", movie_id);
		map.put("title", title);
		map.put("director", director);		
		map.put("subtitle", subtitle);
		map.put("pub_date", pub_date);
		
		//영화 => GetAPImovieCode
		service.GetAPImovieCode(map);

		//코드번호 리턴받아서, 아래 메서드 매개변수로 사용해야함
		
		logger.info("/GetAPImovieInfo요청 실행 ");
		//영화 => movieCode로 상세정보 땡겨오기
		//서비스,DAO 추가해야함.
		
		
		logger.info("@@@@ controller : dataLoad!!!");
	//	return null;
		return "redirect:/Movie/movieAdmin";
	}	
	
	
	
	//매거진 페이지
		@RequestMapping(value = "Magazine/Index", method = RequestMethod.GET)
		public String magazine(Locale locale, Model model) throws Exception {
			logger.info("/magazine 실행");
			

			//서비스계층 메서드 호출
			List<Map<String,Object>>magazineList=service.magazineList();
			
			logger.info("매거진 목록 가져오기 성공");
//			logger.info("매거진 목록: "+magazineList );
			
			model.addAttribute("magazineList",magazineList);

			return "lsy/magazine";
		}
	
	
	
	
	// 매거진 등록 get
	@RequestMapping(value = "/registerMagazine", method =RequestMethod.GET)
	public String registerMagazine() throws Exception {
		logger.info("/registerMagazine GET 실행");
		
		return "lsy/registerMagazine";
	}
	
	
	
	// 매거진 등록 post
	@RequestMapping(value = "/registerMagazine", method =RequestMethod.POST )
	public String registerMagazinePOST(@RequestParam Map<String,Object>mgz, RedirectAttributes rttr) throws Exception {
		logger.info("/registerMagazine POST 실행, 정보:" + mgz);
		
		service.registerMagazine(mgz);
		
		// rttr에 저장
		rttr.addFlashAttribute("result","SUCCESS");
	return "redirect:/Magazine/Index";
	}
	
	//썸머에디터 이미지 업로드
	@PostMapping(value="uploadSummernoteImageFile", produces = "application/json")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {

		Map<String,String> map = new HashMap<String, String>();
		JSONObject JsonData = new JSONObject();
		
		String fileRoot = "C:\\summernote_image\\";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			map.put("url", "/summernoteImage/"+savedFileName);
			map.put("responseCode", "success");
			
		     for (Map.Entry<String, String> entry : map.entrySet()) {
                 String key = entry.getKey();
                 String value = entry.getValue();

                 JsonData.put(key, value);
		     }

		     logger.info("성공 @@@@@ json 정보:" + JsonData);
		     
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			map.put("responseCode", "error");
			
		     for (Entry<String, String> entry : map.entrySet()) {
		    	 String key = entry.getKey();
                 String value = entry.getValue();

                 JsonData.put(key, value);
		     }
		     logger.info("실패 @@@@@ json 정보:" + JsonData);
			 e.printStackTrace();
		}
		
		logger.info("최종 @@@@@ json 정보:" + JsonData);

		return JsonData.toString();
	}
	
    // 매거진 게시글 읽기Magazine/Detail
	@RequestMapping(value = "Magazine/Detail", method = RequestMethod.GET)
	public String magazineDetail(@RequestParam("num") int mgz_num, Model model) throws Exception {
		logger.info("/magazine 실행");
		

		//서비스계층 메서드 호출
		Map<String,Object>magazine=service.readMagazine(mgz_num);
		
		logger.info("매거진 목록 가져오기 성공");
		logger.info("매거진 목록: "+magazine );
		
		model.addAttribute("magazine",magazine);

		return "lsy/magazineDetail";
	}

	// 매거진 수정 get
	@RequestMapping(value = "/updateMagazine", method =RequestMethod.GET)
	public String updateMagazine(@RequestParam("num") int mgz_num, Model model) throws Exception {
		logger.info("/updateMagazine GET 실행");
		
		//서비스계층 메서드 호출
		Map<String,Object>magazine=service.readMagazine(mgz_num);
		
		logger.info("매거진 목록 가져오기 성공");
		logger.info("매거진 목록: "+magazine );
		
		model.addAttribute("magazine",magazine);

		return "lsy/updateMagazine";
	}
	
	
	
	// 매거진 수정 post
	@RequestMapping(value = "/updateMagazine", method =RequestMethod.POST )
	public String updateMagazinePOST(@RequestParam Map<String,Object>mgz, RedirectAttributes rttr) throws Exception {
		logger.info("/updateMagazine POST 실행, 정보:" + mgz);
		
		service.updateMagazine(mgz);
		
		// rttr에 저장
		rttr.addFlashAttribute("result","SUCCESS");
	return "redirect:/Magazine/Index";
	}
	
	// 매거진 삭제 get
		@RequestMapping(value = "/deleteMagazine", method =RequestMethod.GET)
		public String deleteMagazine(@RequestParam("num") int mgz_num, Model model) throws Exception {
			logger.info("/deleteMagazine GET 실행");
			
			//서비스계층 메서드 호출
			service.deleteMagazine(mgz_num);


			return "redirect:/Magazine/Index";
		}
}
