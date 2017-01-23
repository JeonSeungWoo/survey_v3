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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
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

		return "redirect:/member/mlistPage";

	}

	// @GetMapping("/mread")
	// public void read(@RequestParam("membername") String membername, Model
	// model) throws Exception {
	// logger.info("read call..............");
	// model.addAttribute("read", service.read(membername));
	// }

	@GetMapping("/mupdate")
	public void updateGet(@RequestParam("membername") String membername, @ModelAttribute("cri") SearchCriteria cri,
			Model model) throws Exception {
		logger.info("updateGet call...................");
		model.addAttribute("MemberVO", service.read(membername));
	}

	@PostMapping("/mupdate")
	public String updatePost(MemberVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("updatePost call.............");

		logger.info(cri.toString());
		service.update(vo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());
		return "redirect:/member/mlistPage";
	}

	@PostMapping("/mdelete")
	public String deletePost(@RequestParam("membername") String membername, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {
		logger.info("deletePost call.............");
		service.delete(membername);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/member/mlistPage";
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

	@GetMapping("/login")
	public void loginGet() {
		logger.info("login get......");
	}

	@PostMapping("/login")
	public String loginPost(Model model, MemberVO vo) throws Exception {

		logger.info("login post..");
		logger.info("membername: " + vo.getMembername());
		logger.info("email: " + vo.getEmail());

		boolean loginCheck = service.login(vo);

		if (loginCheck == true) {
			logger.info("성공");

			model.addAttribute("value", vo.getMembername());

			return "redirect:/board/listPage?page1";

		}
		logger.info("실패");

		return "redirect:./loginFail";

	}

	@PostMapping("/logout")
	public String logout() throws Exception {

		logger.info("logout .....");

		return "redirect:./login";

	}

	@GetMapping("/loginFail")
	public void loginFail() {
		logger.info("loginFail call......");
	}
}
