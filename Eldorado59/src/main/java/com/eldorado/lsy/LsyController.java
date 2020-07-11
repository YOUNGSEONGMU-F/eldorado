package com.eldorado.lsy;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eldorado.lyj.NaverLoginBO;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.auto.value.processor.escapevelocity.ParseException;

@Controller
@RequestMapping(value="Main/*")
public class LsyController {
	private static final
	Logger logger = LoggerFactory.getLogger(LsyController.class);
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "home";
	}

	
	/*
	 * @RequestMapping(value = "footer", method = RequestMethod.GET) public String
	 * header(Locale locale, Model model) { logger.info("/footer 실행");
	 * 
	 * return "include/footer"; }
	 */
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	} 
	
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "index", method = { RequestMethod.GET, RequestMethod.POST })
	public String main(Locale locale, Model model,@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException, org.json.simple.parser.ParseException {
		logger.info("/main 실행");
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		//1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); 
		//String형식의 json데이터
		/** apiResult json 구조
		{"resultcode":"00",
		"message":"success",
		"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
		**/
		//2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		//3. 데이터 파싱
		//Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		//response의 nickname값 파싱
		String nickname = (String)response_obj.get("nickname");
		System.out.println(nickname);
		//4.파싱 닉네임 세션으로 저장
		session.setAttribute("sessionId",nickname); //세션 생성
		model.addAttribute("result", apiResult);
		
		return "lsy/main";
	}
		



		
	
	
}
