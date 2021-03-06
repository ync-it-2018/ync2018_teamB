package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

/*리뷰 수정 컨트롤러*/
@Controller
public class reviewmodifyController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/reviewmodify", method = RequestMethod.GET)
	public String reviewmodifyController(Locale locale, Model model) {

		logger.info("teamB log 블로그싱글 페이지", locale);

		return "admin/reviewmodify";
	}
	
}