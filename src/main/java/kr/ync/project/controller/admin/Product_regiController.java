package kr.ync.project.controller.admin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.controller.HomeController;

/*제품등록 컨트롤러*/
@Controller
public class Product_regiController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/product_registration", method = RequestMethod.GET)
	public String product_registration(Locale locale, Model model) {

		logger.info("teamB log product_registration 페이지", locale);

		return "admin/product_registration";

	}
}