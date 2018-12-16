package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

/*통계 검색 컨트롤러*/
@Controller
public class searchstatController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/searchstat", method = RequestMethod.GET)
	public String searchstat(Locale locale, Model model) {

		logger.info("teamB log searchstat 페이지", locale);

		return "admin/searchstat";
	}
	
}