package org.survey.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.survey.domain.PageMaker;
import org.survey.domain.SurveyMainVO;
import org.survey.service.SurveyMainService;


@Controller
@RequestMapping("/surveyMain/*")
public class SurveyMainController {
	private static final Logger logger = LoggerFactory.getLogger(SurveyMainController.class);
	
	@Inject
	private SurveyMainService service;
	
	@GetMapping("/create")
	public void createGet() throws Exception {
		logger.info("createGet call......");
	}
	
	
	@PostMapping("/create")
	public String createPost(SurveyMainVO vo, Model model) throws Exception {
		logger.info("createPOST call......");
		service.create(vo);

		return "redirect:/surveyMain/listPage?page=1";
	}

	@GetMapping("/read")
	public void read(@RequestParam("smno")Integer smno, Model model) throws Exception {
		logger.info("read call..........");
		model.addAttribute("read", service.read(smno));
	}

	@GetMapping("/update")
	public void updateGet(@RequestParam("smno")Integer smno, Model model) throws Exception {
		logger.info("updateGet call");
		model.addAttribute("vo",service.read(smno));
	}

	@PostMapping("/update")
	public String updatePost(SurveyMainVO vo, Model model) throws Exception {
		logger.info("updatePost call.......");

		service.update(vo);
		
	

		return "redirect:/surveyMain/listPage?page=1";

	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("smno")Integer smno )throws Exception{
		logger.info("deletePost call.......");
		
		service.delete(smno);
		
		return "redirect:/surveyMain/listPage?page=1";
	}
	
	@GetMapping("/listPage")
	public void listPageGet(Model model,Integer page)throws Exception{
		logger.info("listPage call.......");
		
		model.addAttribute("listPage",service.listPage(page));
		model.addAttribute("pageMaker",new PageMaker(page, service.count(page)));
		
	}
	
	
	
	
	
}
