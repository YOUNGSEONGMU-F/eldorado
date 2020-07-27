package com.eldorado.lyj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eldorado.lyj.service.Email;
import com.eldorado.lyj.service.EmailSender;
import com.eldorado.lyj.service.LyjServiceImpl;
import com.eldorado.lyj.service.MailService;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.auto.value.processor.escapevelocity.ParseException;

@Controller
@RequestMapping(value = "lyj/*")
public class LyjController {

	@Inject
	private LyjServiceImpl service;

	@Autowired
	private MailService mailService;

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_lyj(Locale locale, Model model) {

		return "home";
	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {

		return "lyj/join2";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String joinPOST(@RequestParam Map<String, Object> user, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		System.out.println("join 컨트롤러 받기" + user);
		service.insertMember(user);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('회원가입 성공');");
		out.print("location.href='login';");
		out.print("</script>");
		out.flush();
		return "lyj/login";
	}

	

	@RequestMapping(value = "login2", method = RequestMethod.GET)
	public String logincss(Model model, HttpSession session) {
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);
		//네이버
		model.addAttribute("url", naverAuthUrl);
		
		return "lyj/login2";
	}

	  private NaverLoginBO naverLoginBO;
	  private String apiResult = null;
	  
	  
	  @Autowired private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
	  this.naverLoginBO = naverLoginBO; }
	 
	  @RequestMapping(value = "main", method = {RequestMethod.GET, RequestMethod.POST} )
		public String main_post(Locale locale, Model model,@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException, org.json.simple.parser.ParseException {
			//logger.info("/main 실행");
			System.out.println("여기는 callback : main/lyj");
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
			//session.setAttribute("sessionId",nickname); //세션 생성
			session.setAttribute("id",nickname); //세션 생성
			model.addAttribute("result", apiResult);
			
			return "lsy/main";
		}
	  
	  

	@RequestMapping(value = "login2", method = RequestMethod.POST)
	public String logincss_post(@RequestParam Map<String, Object> map, HttpSession session,
			HttpServletResponse response, Model model) throws IOException {

		String getPass = service.getPass(map);
		if (getPass == null) {
			System.out.println("아이디없음");
			response.setContentType("text/html; charset=utf-8");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('아이디 또는 패스워드가 틀립니다');");
			out.print("location.href='login2';");
			out.print("</script>");
			out.flush();
		} else {
			if (getPass.equals(map.get("pass"))) {
				System.out.println("로그인성공");
				session.setAttribute("id", map.get("id"));
				return "lsy/main";

			} else {
				System.out.println("패스워드 불일치");
				response.setContentType("text/html; charset=utf-8");
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				out.print("<script>");
				out.print("alert('아이디 또는 패스워드가 틀립니다');");
				out.print("location.href='login2';");
				out.print("</script>");
				out.flush();
			}

		}
	

		

		return null;
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) throws IOException {
		System.out.println("여기는 logout");
		session.invalidate();
		return "lsy/main";
	}

	@RequestMapping(value = "findidresult", method = RequestMethod.GET)
	public String findidresult(@RequestParam String userEmail, Model model) {

		String idByEmail = service.findIdresult(userEmail);
		model.addAttribute("idByEmail", idByEmail);

		return "lyj/findidresult";
	}

	@RequestMapping(value = "/email.do")
	public ModelAndView board2() {
		ModelAndView mv = new ModelAndView();
		int ran = new Random().nextInt(900000) + 100000;
		mv.setViewName("lyj/email");
		mv.addObject("random", ran);
		return mv;
	}

	@RequestMapping(value = "/createEmailCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public boolean createEmailCheck(@RequestParam String userEmail, @RequestParam int random, HttpServletRequest req) {
		// 이메일 인증
		System.out.println("create@@");
		int ran = new Random().nextInt(900000) + 100000;
		HttpSession session = req.getSession(true);
		String authCode = String.valueOf(ran);
		session.setAttribute("authCode", authCode);
		session.setAttribute("random", random);
		String subject = "아이디 찾기  코드 발급 안내 입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("귀하의 인증 코드는 " + authCode + "입니다.");
		return mailService.send(subject, sb.toString(), "yjblee12@gmail.com", userEmail, null);
	}

	@RequestMapping(value = "/emailAuth.do", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<String> emailAuth(@RequestParam String authCode, @RequestParam String random,
			HttpSession session) {
		String originalJoinCode = (String) session.getAttribute("authCode");
		String originalRandom = Integer.toString((int) session.getAttribute("random"));
		if (originalJoinCode.equals(authCode) && originalRandom.equals(random))
			return new ResponseEntity<String>("complete", HttpStatus.OK);
		else
			return new ResponseEntity<String>("false", HttpStatus.OK);
	}

	// 새로
	@RequestMapping(value = "pass", method = RequestMethod.GET)
	public String findpassword() {

		return "lyj/pass";
	}

	@Autowired
	private Email email;

	@Autowired
	private EmailSender emailSender;

	// 새로운 비밀번호가 생성된다.

	@RequestMapping("/newPassword")
	// map에는 id와email이 들어오면 돼
	public String newPassword(@RequestParam Map<String, Object> map, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Random r = new Random();

		int num = r.nextInt(89999) + 10000;

		String npassword = "bapsi" + Integer.toString(num);// 새로운 비밀번호 변경

		// memberVO.setPassword(npassword);
		map.put("pass", npassword);

		session.setAttribute("map", map);

		service.newPassword(map);

		email.setContent("새로운 비밀번호 " + map.get("pass") + " 입니다. ");

		email.setReceiver((String) map.get("email"));

		email.setSubject("안녕하세요" + map.get("email") + "님  재설정된 비밀번호를 확인해주세요");

		emailSender.SendEmail(email);

		System.out.println(email);
		session.invalidate();

		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('가상비밀번호가 전송되었습니다. 이메일을 확인해주세요');");
		out.print("location.href='login2';");
		out.print("</script>");
		out.flush();

		return null;

	}
	
	
	  @RequestMapping(value = "movieTicket", method = RequestMethod.GET) 
	  public String movieTicket(Model model) {
	  List<Map<String, Object>> theaterList = service.bringthetheaters();
	  System.out.println("@@@@@@@ : " + theaterList);
	  model.addAttribute("theaterList", theaterList);
	  
	  return "lyj/toReserve"; }
	 

	/*
	 * @RequestMapping(value = "movieTicket2", method = RequestMethod.GET) public
	 * String movieTicket2() {
	 * 
	 * 
	 * 
	 * return "lyj/toReserve2"; }
	 */
	@RequestMapping(value = "Mypage", method = RequestMethod.GET)
	public String Mypage(Model model, HttpSession session, HttpServletRequest request) {
		
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		
		List<Map<String, Object>> ReservationList = service.bringReservations(id);
		
		//request.setAttribute("ReservationList", ReservationList);
		model.addAttribute("ReservationList", ReservationList);
		
		return "lyj/Mypage";
	}
	
	@RequestMapping(value = "Cancel", method = RequestMethod.GET)
	public String Cancel(HttpSession session) {

		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		return "lyj/toCancel";
	}
	
	@RequestMapping(value = "modaltest", method = RequestMethod.GET)
	public String test(HttpSession session) {


		return "lyj/test";
	}
	@RequestMapping(value = "submitCancel", method = RequestMethod.GET)
	public String submitCancel(HttpSession session,HttpServletResponse response) {
		

		return null;
	}
	
	@RequestMapping(value = "submitCancel", method = RequestMethod.POST)
	public String submitCancel_post(HttpSession session,HttpServletResponse response
			,@RequestParam String reserv_num) {
			System.out.println("예매 취소 완료!");
			
			String id = (String)session.getAttribute("id");
			
			response.setContentType("text/html; charset=utf-8");
			response.setCharacterEncoding("UTF-8");
			System.out.println("id : " + id + ", num : " + reserv_num);
			PrintWriter out;
			try {
				int result = service.CancelMovieTicket(id,reserv_num);
				if(result == 0) {
					out = response.getWriter();
					out.print("<script>");
					out.print("alert('예매 정보가 없음');");
					out.print("location.href='Mypage';");
					out.print("</script>");
					out.flush();
				}else {
					out = response.getWriter();
					out.print("<script>");
					out.print("alert('예매 취소 완료!');");
					out.print("location.href='Mypage';");
					out.print("</script>");
					out.flush();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}

		return null;
	}
	
	
	   
}
