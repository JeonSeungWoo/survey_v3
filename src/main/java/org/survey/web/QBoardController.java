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
import org.survey.domain.QBoardVO;
import org.survey.service.QBoardDAOService;

@Controller
@RequestMapping("/qBoard")
public class QBoardController {
	private static final Logger logger = 
			LoggerFactory.getLogger(QBoardController.class);

	@Inject
	private QBoardDAOService service;
	
	@GetMapping("/create")
	public void createGet()throws Exception{
		logger.info("createGet call.....");
	}
	
	@PostMapping("/create")
	public String createPost(QBoardVO vo, Model model)throws Exception{
		logger.info("cratePost call....");

		service.qcreate(vo);
		
		return "redirect:/qBoard/listAll";
		
	}
	
	@GetMapping("/listAll")
	public void listAll(Model model)throws Exception{
		logger.info("listAll call........");
		model.addAttribute("list",service.qlistAll());
		
	}
	
	@GetMapping("/read")
	public void read(@RequestParam("qno")Integer qno,Model model)throws Exception{
		logger.info("read call......");
		model.addAttribute("read", service.qread(qno));
	}
	
	@GetMapping("/update")
	public void updateGet(Model model, @RequestParam("qno")Integer qno)throws Exception{
		logger.info("updateGet call....");
		model.addAttribute("vo",service.qread(qno));
		
	}
	
	@PostMapping("/update")
	public String updatePost(Model model,QBoardVO vo, int page)throws Exception{
		logger.info("update Post call......");
		logger.info("update Post call......");
		logger.info("update Post call......");
		logger.info("vo "  + vo);
		
		
		service.qupdate(vo);
		
		return "redirect:/qBoard/listAll";
		
	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("qno")int qno)throws Exception{
		logger.info("delete call....");
		service.qdelete(qno);
		
		return "redirect:/qBoard/listAll";
		
		
	}
	
	
	
	
}
