package kr.ync.project.controller.front;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.controller.HomeController;
import kr.ync.project.service.Product_regiService;

@Controller
public class shopController {
	private static final Logger logger = LoggerFactory.getLogger(shopController.class);
	
	@Autowired
	private Product_regiService service;
//	@RequestMapping(value = "/shop", method = RequestMethod.GET)
//	public String login(Locale locale, Model model) {
//
//		logger.info("teamB log shop 페이지", locale);
//
//		return "front/shop";
//	}
	@GetMapping(value = "/shop")
	public String Product_GET(Model model) throws Exception {
		logger.info("show all List...............");
		model.addAttribute("product_list", service.listAll());
		
		return "front/shop";
	}
	
	@GetMapping(value = "/front/product_details")
	public String read(@RequestParam("PRO_NUM") int PRO_NUM,Model model) throws Exception {
		logger.info("show free product_details...............");
		model.addAttribute("productDetails", service.read(PRO_NUM));
		
		return "front/product_details";
		
	}
}