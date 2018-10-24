package kr.ync.project.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class searchstatResultController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/searchstatResult", method = RequestMethod.GET)
	public String searchstatResult(Locale locale, Model model) {

		logger.info("teamB log searchstatResult 페이지", locale);

		return "admin/searchstatResult";
	}
	
}