package com.eldorado.lyj;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.eclipse.jetty.server.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eldorado.lyj.service.LyjServiceImpl;

@Controller
@RequestMapping(value="lyj/*")
public class LyjController {
	
	@Inject
	private LyjServiceImpl service;
	
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
				//세션값 저장
				session.setAttribute("id", map.get("id"));
				
				return "lyj/main";
			}else {
				System.out.println("패스워드 불일치");
			}
		}
		return "lyj/login";
	}
}
