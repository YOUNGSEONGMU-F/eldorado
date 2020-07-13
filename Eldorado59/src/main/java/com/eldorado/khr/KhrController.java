package com.eldorado.khr;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eldorado.khr.service.KhrServiceImpl;
import com.fasterxml.jackson.databind.JsonNode;

@Controller
@RequestMapping(value = "khr/*")
public class KhrController {

	@Inject
	private KhrServiceImpl service;

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String home_khr(Locale locale, Model model) {

		return "home";
	}

	// 로그인(임시)
	@RequestMapping(value = "loginTest", method = RequestMethod.GET)
	public String login(Model model, HttpSession session) {

		return "khr/loginTest";
	}
	
	// 카카오
	private kakao_restapi kakao_restapi = new kakao_restapi();
    
//    @RequestMapping(value = "loginTest", produces = "application/json", method = { RequestMethod.GET, RequestMethod.POST })
//    public String kakaoLogin(@RequestParam("code") String code) {
//        // System.out.println(access_token);
//        return "khr/loginTest";
//    }
    
    @RequestMapping(value = "loginTest", produces = "application/json")
    public String kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session) {
        System.out.println("로그인 할때 임시 코드값");
        //카카오 홈페이지에서 받은 결과 코드
        System.out.println(code);
        System.out.println("로그인 후 결과값");
        
        //카카오 rest api 객체 선언
        kakao_restapi kr = new kakao_restapi();
        //결과값을 node에 담아줌
        JsonNode node = kr.getAccessToken(code);
        //결과값 출력
        System.out.println(node);
        //노드 안에 있는 access_token값을 꺼내 문자열로 변환
        String token = node.get("access_token").toString();
        //세션에 담아준다.
        session.setAttribute("token", token);
        
        return "khr/loginTest";
    }





	@RequestMapping(value = "loginTest", method = RequestMethod.POST)
	public String login_post(@RequestParam Map<String, Object> map, HttpSession session, HttpServletResponse response,
			Model model) throws IOException {

		String getPass = service.getPass(map);

		if (getPass == null) {
			System.out.println("아이디없음");
			response.setContentType("text/html; charset=utf-8");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('아이디 또는 패스워드가 틀립니다');");
			out.print("location.href='loginTest';");
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
				out.print("location.href='loginTest';");
				out.print("</script>");
				out.flush();
			}
		}

		return null;
	}

	// 회원정보 수정
	@RequestMapping(value = "updateMember", method = RequestMethod.GET)
	public String updateMember(Locale locale, Model model) {

		return "khr/updateMember";
	}

	@RequestMapping(value = "updateMember", method = RequestMethod.POST)
	public String updateMember_post(Locale locale, Model model, @RequestParam Map<String, Object> user,
			HttpSession session) {

		service.updateMember(user);

		return "khr/updateMember";
	}

	// 회원정보조회
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String info(HttpSession session, Model model) {
		System.out.println("정보 조회");
		// 데이터 가져오기
		String id = (String) session.getAttribute("id");

		return "info";
	}

	// 회원정보 삭제
	@RequestMapping(value = "deleteMember", method = RequestMethod.GET)
	public String deleteMember(Locale locale, Model model) {

		return "khr/deleteMember";
	}

	@RequestMapping(value = "deleteMember", method = RequestMethod.POST)
	public String deleteMember_post(Locale locale, Model model, @RequestParam Map<String, Object> user) {

		service.deleteMember(user);

		return "khr/deleteMember";
	}

	// 비밀번호 수정
	@RequestMapping(value = "changePW", method = RequestMethod.GET)
	public String changePW(Locale locale, Model model) {

		return "khr/changePW";
	}

//	@RequestMapping(value = "changePW", method = RequestMethod.POST)
//	public String changePW_post(Locale locale, Model model,
//			@RequestParam Map<String,Object> user) {
//	
//		service.changePW(user);
//		
//		return "khr/changePW";
//	}

	// 마이페이지
//	@RequestMapping(value = "myPage", method = RequestMethod.GET)
//	public String myPage(Locale locale, Model model) {
//	
//		return "khr/myPage";
//	}
//	
//	@RequestMapping(value = "myPage", method = RequestMethod.POST)
//	public String myPage_post(Locale locale, Model model,
//			@RequestParam Map<String,Object> user) {
//	
//		service.deleteMember(user);
//		
//		return "khr/myPage";
//	}

}
