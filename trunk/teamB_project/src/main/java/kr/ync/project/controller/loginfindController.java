package kr.ync.project.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class loginfindController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/login_find", method = RequestMethod.GET)
	public String login_ifnd(Locale locale, Model model) {

		logger.info("teamB log 아이디찾기페이지", locale);

		return "front/login_find";
	}
	
}