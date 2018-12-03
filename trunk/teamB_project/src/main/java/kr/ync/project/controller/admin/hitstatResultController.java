package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

@Controller
public class hitstatResultController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/hitstatResult", method = RequestMethod.GET)
	public String hitstatResult(Locale locale, Model model) {

		logger.info("teamB log hitstatResult 페이지", locale);

		return "admin/hitstatResult";
	}
	
}