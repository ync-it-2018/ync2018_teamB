package kr.ync.project.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class reviewmentController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/reviewment", method = RequestMethod.GET)
	public String reviewmentController(Locale locale, Model model) {

		logger.info("teamB log 블로그싱글 페이지", locale);

		return "admin/reviewment";
	}
	
}