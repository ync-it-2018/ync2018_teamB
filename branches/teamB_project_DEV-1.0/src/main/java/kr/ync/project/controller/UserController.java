package kr.ync.project.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.UserService;

@Controller
@RequestMapping("/front")
public class UserController {

	private static Logger logger = LoggerFactory.getLogger(UserController.class);

	
	@Autowired
	private UserService service;

	@GetMapping(value = "/loginService")
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

	}

	@PostMapping(value = "/loginPost")
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		String returnURL = "";
		UserVO vo = service.login(dto);

		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.
		if (vo == null) {
			return;
		}
		model.addAttribute("userVO", vo);

		if (dto.isUseCookie()) {
			int amount = 60 * 60 * 24 * 2; // 2일동안 유지
			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getUSER_ID(), session.getId(), sessionLimit);
		} else { // 로그인에 실패한 경우
			returnURL = "redirect:/login"; // 로그인 폼으로 다시 가도록 함
		}



	}

	

		

	

//	@GetMapping(value = "/logout")
//	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
//			throws Exception {
//
//		logger.info("logout.................................1");
//
//		Object obj = session.getAttribute("login");
//
//		if (obj != null) {
//			UserVO vo = (UserVO) obj;
//			logger.info("logout.................................2");
//			session.removeAttribute("login");
//			session.invalidate();
//
//			logger.info("logout.................................3");
//			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
//
//			if (loginCookie != null) {
//				logger.info("logout.................................4");
//				loginCookie.setPath("/");
//				loginCookie.setMaxAge(0);
//				response.addCookie(loginCookie);
//				service.keepLogin(vo.getUids(), session.getId(), new Date());
//				logger.info("logout success................");
//			}
//		}
//		response.sendRedirect("/sboard/list");
//	}
}
