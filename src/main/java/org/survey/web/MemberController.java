package org.survey.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.survey.domain.MemberVO;
import org.survey.domain.PageMaker;
import org.survey.domain.SearchCriteria;
import org.survey.service.MemberService;

@CrossOrigin
@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private MemberService service;

	@GetMapping("/mcreate")
	public void createGet() throws Exception {
		logger.info("mcreateGet call.....");
	}

	@PostMapping("/mcreate")
	public String createPost(MemberVO vo, Model model) throws Exception {
		logger.info("mcreatePost call.....");
		service.create(vo);

		return "redirect:/member/listAll";

	}

	@GetMapping("/mread")
	public void read(@RequestParam("membername") String membername, Model model) throws Exception {
		logger.info("read call..............");
		model.addAttribute("read", service.read(membername));
	}

	@GetMapping("/mupdate")
	public void updateGet(@RequestParam("membername") String membername, Model model) throws Exception {
		logger.info("updateGet call...................");
		model.addAttribute("vo", service.read(membername));
	}

	@PostMapping("/mupdate")
	public String updatePost(MemberVO vo, Model model) throws Exception {
		logger.info("updatePost call................");
		service.update(vo);
		return "redirect:/member/listAll";
	}

	@PostMapping("/mdelete")
	public String delete(@RequestParam("membername") String membername) throws Exception {
		logger.info("deletePost call.............");
		service.delete(membername);
		return "redirect:/member/listAll";
	}

	@GetMapping("/mlistAll")
	public void listAllGet(Model model) throws Exception {
		logger.info("mlistAll call..............");
		model.addAttribute("list", service.listAll());
		System.out.println(service.listAll());
		System.out.println("====================================");
	}

	@GetMapping("/mlistPage")
	public void listPageGet(Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		logger.info(cri.toString());
		model.addAttribute("listPage", service.listSearchCriteria(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
	}
}
