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
public class freeboardwriteController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/freeboard_write", method = RequestMethod.GET)
	public String hitstat(Locale locale, Model model) {

		logger.info("teamB log freeboard_write 페이지", locale);

		return "front/freeboard_write";
	}
	
}