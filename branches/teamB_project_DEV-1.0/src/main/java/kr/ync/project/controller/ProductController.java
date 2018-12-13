package kr.ync.project.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.project.domain.Product_regiVO;
import kr.ync.project.service.Product_regiService;
@Controller
@RequestMapping("/front")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private Product_regiService service;

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
