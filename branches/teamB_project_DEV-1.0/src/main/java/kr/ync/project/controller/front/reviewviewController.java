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
public class reviewviewController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
//	@RequestMapping(value = "/review_write", method = RequestMethod.GET)
//	public String reviewwriteController(Locale locale, Model model) {
//	
//		logger.info("teamB log 사용자후기보기 페이지", locale);
//	
//		return "front/review_write";
//	}
//
	@RequestMapping(value = "/review_modify", method = RequestMethod.GET)
	@ResponseStatus(value = HttpStatus.OK)
	public String reviewmodifyController(Locale locale, Model model) {

		logger.info("teamB log 리뷰 수정 페이지", locale);

		return "front/review_modify";
	}
//	
//	@RequestMapping(value = "/review_remove", method = RequestMethod.GET)
//	public String reviewremoveController(Locale locale, Model model) {
//
//		logger.info("teamB log 사용자후기보기 페이지", locale);
//
//		return "front/review_remove";
//	}
}
