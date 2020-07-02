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

import com.eldorado.lyj.service.LyjServiceImpl;
import com.eldorado.lyj.service.MailService;

@Controller
@RequestMapping(value="lyj/*")
public class LyjController {
	
	@Inject
	private LyjServiceImpl service;
	
	@Autowired
	private MailService mailService;
	 
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_lyj(Locale locale, Model model) {
	
		return "home";
	}
	
	@RequestMapping(value="join",method =RequestMethod.GET)
	public String join() {
		
		return "lyj/join2";
	}

	@RequestMapping(value="join",method =RequestMethod.POST)
	public String joinPOST(@RequestParam Map<String,Object> user
			,HttpServletRequest request,
			HttpServletResponse response
			) throws IOException {
		System.out.println("join 컨트롤러 받기"+user);
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
	
	@RequestMapping(value="login",method =RequestMethod.GET)
	public String login() {
		
		return "lyj/login";
	}
	
	@RequestMapping(value="login",method =RequestMethod.POST)
	public String login_post(@RequestParam Map<String,Object> map,
			HttpSession session) {
		
		String getPass = service.getPass(map);
		if(getPass == null) {
			System.out.println("아이디없음");
		}else {
			if(getPass.equals(map.get("pass"))) {
				System.out.println("로그인성공");

				session.setAttribute("id", map.get("id"));
				
				return "lyj/main";
			}else {
				System.out.println("패스워드 불일치");
			}
		}
		return "lyj/login";
	}
	
	@RequestMapping(value="login2",method =RequestMethod.GET)
	public String logincss() {
		
		return "lyj/login2";
	}
	
	@RequestMapping(value="login2",method =RequestMethod.POST)
	public String logincss_post(@RequestParam Map<String,Object> map,
			HttpSession session) {
		
		String getPass = service.getPass(map);
		if(getPass == null) {
			System.out.println("아이디없음");
		}else {
			if(getPass.equals(map.get("pass"))) {
				System.out.println("로그인성공");
				session.setAttribute("id", map.get("id"));
				
				return "lyj/main";
			}else {
				System.out.println("패스워드 불일치");
			}
		}
		return "lyj/login2";
	}
	@RequestMapping(value="findidresult",method =RequestMethod.GET)
	public String findidresult() {
		
		return "lyj/findidresult";
	}
	
	
	
	@RequestMapping(value="findIdpage",method =RequestMethod.GET)
	public String findIdget() {
		
		return "lyj/findIdpage";
	}
	@RequestMapping(value="findIdpage",method =RequestMethod.POST)
	public String findIdpost(
			@RequestParam("name") String name, 
			@RequestParam("email") String email,HttpServletRequest request


			) {

		return "lyj/findIdpage";
	}
	
	
	@RequestMapping(value="/email.do")
	public ModelAndView board2(){
	ModelAndView mv = new ModelAndView();
	int ran = new Random().nextInt(900000) + 100000;
	mv.setViewName("lyj/email");
	mv.addObject("random", ran);
	return mv;
	}


	@RequestMapping(value="/createEmailCheck.do", method=RequestMethod.GET)
	@ResponseBody
	public boolean createEmailCheck(@RequestParam String userEmail, @RequestParam int random, HttpServletRequest req){
	//이메일 인증
		System.out.println("create@@");
	int ran = new Random().nextInt(900000) + 100000;
	HttpSession session = req.getSession(true);
	String authCode = String.valueOf(ran);
	session.setAttribute("authCode", authCode);
	session.setAttribute("random", random);
	String subject = "아이디 찾기  코드 발급 안내 입니다.";
	StringBuilder sb = new StringBuilder();
	sb.append("귀하의 인증 코드는 " + authCode + "입니다.");
	return mailService.send(subject, sb.toString(), "yjblee12@gmail.com" , userEmail, null);
	}

	@RequestMapping(value="/emailAuth.do", method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<String> emailAuth(@RequestParam String authCode, @RequestParam String random, HttpSession session){
	String originalJoinCode = (String) session.getAttribute("authCode");
	String originalRandom = Integer.toString((int) session.getAttribute("random"));
	if(originalJoinCode.equals(authCode) && originalRandom.equals(random))
	return new ResponseEntity<String>("complete", HttpStatus.OK);
	else return new ResponseEntity<String>("false", HttpStatus.OK);
	}


}
