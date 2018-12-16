package kr.ync.project.controller.front;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import kr.ync.project.controller.HomeController;

@Controller

public class freeboardremoveController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/freeboard_remove", method = RequestMethod.GET)
	public String freeboardremove(Locale locale, Model model) {

		logger.info("teamB log  freeboardremove 페이지", locale);

		return "front/freeboard_remove";
	}
	
	
}