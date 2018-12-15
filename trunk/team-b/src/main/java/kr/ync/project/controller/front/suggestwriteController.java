package kr.ync.project.controller.front;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

@Controller
public class suggestwriteController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/suggest_write", method = RequestMethod.GET)
	public String freeboard(Locale locale, Model model) {

		logger.info("teamB log suggest_write 페이지", locale);

		return "front/suggest_write";
	}
	
}