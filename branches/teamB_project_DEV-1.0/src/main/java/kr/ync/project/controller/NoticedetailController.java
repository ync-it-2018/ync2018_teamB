package kr.ync.project.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticedetailController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/Notice/Notice_detail", method = RequestMethod.GET)
	public String Noticedetail(Locale locale, Model model) {

		logger.info("teamB log Notice_detail 페이지", locale);

		return "front/Notice_detail";
	}
}
