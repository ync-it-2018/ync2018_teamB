package kr.ync.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.service.Product_regiService;

/* 메인화면을 연결해주는 컨트롤러 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private Product_regiService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Product_regiVO vo, Locale locale, Model model) throws Exception {

		model.addAttribute("top_list",service.top3());
		logger.info("teamB log 메인화면", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "front/index";
	}
	
}
