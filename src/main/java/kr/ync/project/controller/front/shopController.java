package kr.ync.project.controller.front;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.service.Product_regiService;

@Controller
public class shopController {
	private static final Logger logger = LoggerFactory.getLogger(shopController.class);
	
	@Autowired
	private Product_regiService service;
	
	@GetMapping(value = "/shop")
	public String listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString()); // SearchCriteria 객체의 값
		//리뷰에 값을 전달시 리스트 형식으로 전달
		model.addAttribute("product_list", service.listSearchCriteria(cri));
		// 페이징 값 설정 하기위해 사용
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		//전체 카운트를 매기기 위해 사용
		pageMaker.setTotalCount(service.listSearchCount(cri));
		//해당 모델에 페이지 값을 넘기기 위해 사용;
		model.addAttribute("pageMaker", pageMaker);
		
		return "front/shop";
	}
	
	@GetMapping(value = "/front/product_details")
	public String read(@RequestParam("PRO_NUM") int PRO_NUM,Model model) throws Exception {
		service.viewHits(PRO_NUM);
		logger.info("show free product_details...............");
		// 제품 리스트에 값을 전달하고 read메소드 호출
		model.addAttribute("productDetails", service.read(PRO_NUM));
		
		return "front/product_details";
		
	}
}