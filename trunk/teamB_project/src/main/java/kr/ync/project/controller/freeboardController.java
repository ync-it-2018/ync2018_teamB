package kr.ync.project.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class freeboardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/freeboard", method = RequestMethod.GET)
	public String freeboard(Locale locale, Model model) {

		logger.info("teamB log freeboard 페이지", locale);

		return "front/freeboard";
	}
	
}