package kr.ync.project.controller.front;

import java.util.Date;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import kr.ync.project.controller.HomeController;
import kr.ync.project.domain.UserVO;
import kr.ync.project.service.UserService;

@Controller
public class loginController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		logger.info("teamB log 로그인페이지", locale);

		return "front/login";
	}
	
	@PostMapping(value = "/login_new_proc")
	public String login_new_proc(Locale locale, Model model) {

		logger.info("teamB log 회원가입페이지(코딩부분)", locale);

		return "front/login_new_proc";
	}
	/*	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model) {

		logger.info("teamB log 로그아웃", locale);

		return "front/logout";
	}
	*/
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, 
			HttpServletResponse response, 
			HttpSession session)
			throws Exception {

		Object obj = session.getAttribute("login");
		
		logger.info("로그아웃까지 들어옴");

		if (obj != null) {
			UserVO vo = (UserVO) obj;
			
			session.removeAttribute("login");
			session.invalidate();
			logger.info("쿠키 있으면 지워라");

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if (loginCookie != null) {

				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUSER_ID(), session.getId(), new Date());
			}
		}
		logger.info("그냥나옴");
		//response.sendRedirect("front/logout");
		return "front/logout";
	}
	@RequestMapping(value = "/login_user_modify", method = RequestMethod.GET)
	public String login_user_modify(Locale locale, Model model) {

		logger.info("teamB log 회원수정페이지, 회원탈퇴페이지", locale);

		return "front/login_user_modify";
	}
	
//	@RequestMapping(value = "/login_user_modi_proc", method = RequestMethod.GET)
//	public String login_user_modi_proc(Locale locale, Model model) {
//
//		logger.info("teamB log 회원수정페이지(코딩부분)", locale);
//
//		return "front/login_user_modi_proc";
//	}
	
	@PostMapping(value = "/login_user_modi_proc")
	public String login_user_modi_proc(Locale locale, Model model) {

		logger.info("teamB log 회원수정페이지(코딩부분)", locale);

		return "front/login_user_modi_proc";
	}
	
	@PostMapping(value = "/login_user_delete_proc")
	public String login_user_delete_proc(Locale locale, Model model) {

		logger.info("teamB log 회원삭제페이지(코딩부분)", locale);

		return "front/login_user_delete_proc";
	}
}