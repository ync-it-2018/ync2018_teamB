package kr.ync.project.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.dto.Product_regiDTO;
import kr.ync.project.service.Product_regiService;
@Controller
@RequestMapping("/admin")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private Product_regiService service;

//	@GetMapping(value = "/Product_regiService")
//	public void Product_regiGET(@ModelAttribute("dto") Product_regiDTO dto) {
//
//	}
//	@GetMapping(value = "/shop")
//	public String Product_GET(Model model) throws Exception {
//		logger.info("show all List...............");
//		model.addAttribute("list", service.listAll());
//		
//		return "front/shop";
//	}

	@PostMapping(value = "/product_regiPost")
	public void Product_regiPOST(Product_regiVO vo, HttpSession session, Model model) throws Exception {

		service.regist(vo);
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (vo == null) {
			return;
		}

		model.addAttribute("Product_regiVO", vo);

	}
}
