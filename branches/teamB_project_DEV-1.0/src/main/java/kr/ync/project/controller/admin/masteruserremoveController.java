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
public class masteruserremoveController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/master_user_remove", method = RequestMethod.GET)
	public String product_registration(Locale locale, Model model) {

		logger.info("teamB log master_user_remove 페이지", locale);

		return "admin/master_user_remove";

	}
}