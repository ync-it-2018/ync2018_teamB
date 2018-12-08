package kr.ync.project.controller.front;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

@Controller
public class loginController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		logger.info("teamB log 아이디찾기페이지", locale);

		return "front/login";
	}
	
	@PostMapping(value = "/login_new_proc")
	public String login_new_proc(Locale locale, Model model) {

		logger.info("teamB log 회원가입페이지", locale);

		return "front/login_new_proc";
	}
	
}