package com.eldorado.khr;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eldorado.khr.service.KhrService;
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
        System.out.println("로그인 후 결과값 : "+code);
        
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
				return "Main/index";
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

	// 회원정보 조회 & 수정
	@RequestMapping(value = "updateMember", method = RequestMethod.GET)
	public String updateMember(Locale locale, Model model,HttpSession session) {

		String id = (String) session.getAttribute("id");
		
		Map<String, Object> GetMember = service.getMember(id);
		model.addAttribute("GetMember", GetMember);
		
		
		return "khr/updateMember";
	}

	@RequestMapping(value = "updateMember", method = RequestMethod.POST)
	public String updateMember_post(Locale locale, Model model, @RequestParam Map<String, Object> user,
			HttpSession session) {

		service.updateMember(user);
		

		return "redirect:/Mypage";
	}

	// 회원정보 삭제
	@RequestMapping(value = "deleteMember", method = RequestMethod.GET)
	public String deleteMember(Locale locale, Model model,HttpSession session) {
		
		String id = (String) session.getAttribute("id");
		if(id == null) {
			
			return "redirect:/lyj/login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		return "khr/deleteMember";
	}

	@RequestMapping(value = "deleteMember", method = RequestMethod.POST)
	public String deleteMember_post(Locale locale, Model model, @RequestParam Map<String, Object> user) {

		service.deleteMember(user);
		//리턴 주소 수정
		return "../Main/index";
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
	
	
	// 무비기프트
	@RequestMapping(value = "MovieGift", method = RequestMethod.GET)
	public String MovieGift(Locale locale, Model model) {

		return "khr/MovieGift";
	}
	
	//무비기프트 -> 기프트 예매권 결제 일반예매
	@RequestMapping(value = "GiftOrder", method = RequestMethod.GET)
	public String GiftOrder(Locale locale, Model model, HttpSession session,
			HttpServletRequest request) {
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:/lyj/login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		Map<String, Object> GetName = service.getName(id);
		model.addAttribute("GetName", GetName);
		
		return "khr/GiftOrder";
	}
	
	@RequestMapping(value = "GiftOrder", method = RequestMethod.POST)
	public String GiftOrder_post(Locale locale, Model model) {
		
		
		return "redirect:/khr/MypageGift";
	}
	
	//무비기프트 -> 기프트 예매권 결제 3d예매
	@RequestMapping(value = "GiftOrders", method = RequestMethod.GET)
	public String GiftOrders(Locale locale, Model model, HttpSession session,
			HttpServletRequest request) {
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:/lyj/login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		Map<String, Object> GetName = service.getName(id);
		model.addAttribute("GetName", GetName);
		
		return "khr/GiftOrders";
	}
	
	@RequestMapping(value = "GiftOrders", method = RequestMethod.POST)
	public String GiftOrders_post(Locale locale, Model model) {
		
		return "redirect:/khr/MypageGift";
	}
	
	// 무비기프트 결제완료
	@RequestMapping(value = "giftComplete", method = RequestMethod.GET)
	public String giftComplete() {

		return "khr/giftComplete";
	}
	
	@RequestMapping(value = "giftComplete", method = RequestMethod.POST)
	public String giftComplete_post(Locale locale, Model model,@RequestParam Map<String, Object> giftOrder) {
		
		
		service.insertGift(giftOrder);
		
		return "khr/giftComplete";
	}
	
	//마이페이지 무비기프트 내역확인
	@RequestMapping(value = "MypageGift", method = RequestMethod.GET)
	public String Mypage(Model model, HttpSession session, HttpServletRequest request) {
		
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		
		List<Map<String, Object>> MovieGiftList = service.bringMovieGift(id);
		
		model.addAttribute("MovieGiftList", MovieGiftList);
		
		return "khr/MypageGift";
	}
	
	@RequestMapping(value = "MypageGift", method = RequestMethod.POST)
	public String MypageGift_post(Locale locale, Model model,@RequestParam Map<String, Object> giftOrder) {
		
		
		service.insertGift(giftOrder);
		
		return "redirect:/khr/MypageGift";
	}
	
	
	// 좌석선택
	@RequestMapping(value = "selectSeat", method = RequestMethod.GET)
	public String selectSeat(Locale locale, Model model, HttpSession session, @RequestParam String title,
			@RequestParam String th_name, @RequestParam String date, @RequestParam String time ,
			HttpServletRequest request) {
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:/lyj/login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		request.setAttribute("title", title);
		request.setAttribute("th_name", th_name);
		request.setAttribute("date", date);
		request.setAttribute("time", time);
		
		
		
		return "khr/selectSeat";
	}
	@RequestMapping(value = "selectSeat", method = RequestMethod.POST)
	public String selectSeat_post(Locale locale, Model model,HttpSession session, @RequestParam String title,
			@RequestParam String th_name, @RequestParam String date, @RequestParam String time ) {
		
		/*
		 * String id = (String)session.getAttribute("id");
		 * 
		 * if(id == null) {
		 * 
		 * return "redirect:/lyj/login2"; }
		 */
		
		return "khr/selectSeat";
	}
	
	// 결제
	@RequestMapping(value = "TicketOrder", method = RequestMethod.GET)
	public String TicketOrder(Locale locale, Model model,HttpSession session) {
		
		
		  String id = (String)session.getAttribute("id");
		  
		  if(id == null) {
		  
		  return "redirect:/lyj/login2"; }
		 
		
		
		return "khr/TicketOrder";
	}

	@RequestMapping(value = "TicketOrder", method = RequestMethod.POST)
	public String TicketOrder_post(Locale locale, Model model, HttpSession session, HttpServletRequest request, @RequestParam String title,
			@RequestParam String th_name, @RequestParam String date, @RequestParam String time ,
			@RequestParam String adult, @RequestParam String kid, @RequestParam String a_price, @RequestParam String k_price,
			@RequestParam String total_price, @RequestParam String total_amount, @RequestParam String seat) {
		
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:/lyj/login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		//request.setAttribute("id", id);
		
		//예매 정보 가져오기
		request.setAttribute("title", title);
		request.setAttribute("th_name", th_name);
		request.setAttribute("date", date);
		request.setAttribute("time", time);
		request.setAttribute("adult", adult);
		request.setAttribute("kid", kid);
		request.setAttribute("a_price", a_price);
		request.setAttribute("k_price", k_price);
		request.setAttribute("total_price", total_price);
		request.setAttribute("total_amount", total_amount);
		request.setAttribute("seat", seat);
		

		return "khr/TicketOrder";
	}
	
	//결제 완료
	@RequestMapping(value = "OrderComplete", method = RequestMethod.GET)
	public String OrderComplete() {

		return "khr/OrderComplete";
	}
	
	@RequestMapping(value = "OrderComplete", method = RequestMethod.POST)
	public String OrderComplete_post(Locale locale, Model model,
			@RequestParam Map<String, Object> reserve, HttpSession session, HttpServletRequest request, @RequestParam String title,
			@RequestParam String th_name, @RequestParam String date, @RequestParam String time ,
			@RequestParam(value="adult", required=false) String adult, @RequestParam(value="kid", required=false) String kid, @RequestParam(value="a_price", required=false) String a_price, @RequestParam(value="k_price", required=false) String k_price,
			@RequestParam String total_price, @RequestParam String total_amount, @RequestParam String seat) {
		
		String id = (String)session.getAttribute("id");
		
		if(id == null) {
			
			return "redirect:/lyj/login2";
		}
		//jsp로 아이디값 넘겨주기
		session.setAttribute("id", id);
		
		//예매 정보 가져오기
		request.setAttribute("title", title);
		request.setAttribute("th_name", th_name);
		request.setAttribute("date", date);
		request.setAttribute("time", time);
		request.setAttribute("adult", adult);
		request.setAttribute("kid", kid);
		request.setAttribute("a_price", a_price);
		request.setAttribute("k_price", k_price);
		request.setAttribute("total_price", total_price);
		request.setAttribute("total_amount", total_amount);
		request.setAttribute("seat", seat);
	
		service.insertReserve(reserve);
		
		return "khr/OrderComplete";
	}
	
	
	
	


}
