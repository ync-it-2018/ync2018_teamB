package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

/*통계 검색결과 컨트롤러*/
@Controller
public class searchstatResultController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/searchstatResult", method = RequestMethod.GET)
	public String searchstatResult(Locale locale, Model model) {

		logger.info("teamB log searchstatResult 페이지", locale);

		return "admin/searchstatResult";
	}
	
}