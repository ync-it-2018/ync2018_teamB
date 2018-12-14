package kr.ync.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.Review_regiVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.service.Review_regiService;

@Controller
public class reviewController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private Review_regiService service;

	@GetMapping(value = "/review")
	public String ReviewGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
	logger.info("show all List...............");
	
	model.addAttribute("review_list", service.listSearchCriteria(cri));
	
	PageMaker pageMaker = new PageMaker();
	pageMaker.setCri(cri);

	//pageMaker.setTotalCount(service.listCountCriteria(cri));
	pageMaker.setTotalCount(service.listSearchCount(cri));

	model.addAttribute("pageMaker", pageMaker);
	
	return "front/review";
	}
	
	
	@GetMapping(value = "/front/review_view")
	public String read(@RequestParam("REVIEW_NUM") int REVIEW_NUM,Model model) throws Exception {
		logger.info("show review board view...............");
		model.addAttribute("review_View", service.read(REVIEW_NUM));
		
		return "/front/review_view";
		
	}
	
	
	@PostMapping(value = "/review_write")
	public String registPOST(Review_regiVO review, RedirectAttributes rttr, HttpServletRequest request) throws Exception {

		logger.info("write post ...........");
		
		review.setREVIEW_CONT(request.getParameter("contents"));
		service.regist(review);
		//model.addAttribute("result", "success");
		//return "/board/success";
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/review";
	}
}

