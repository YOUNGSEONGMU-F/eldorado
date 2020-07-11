package com.eldorado.lyj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {

		return "lyj/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login_post(@RequestParam Map<String, Object> map, HttpSession session) {

		String getPass = service.getPass(map);
		if (getPass == null) {
			System.out.println("아이디없음");
		} else {
			if (getPass.equals(map.get("pass"))) {
				System.out.println("로그인성공");

				session.setAttribute("id", map.get("id"));

				return "lyj/main";
			} else {
				System.out.println("패스워드 불일치");
			}
		}
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

}
