package org.survey.web;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.survey.domain.PageMaker;
import org.survey.domain.SearchCriteria;
import org.survey.domain.SurveyMainVO;
import org.survey.service.SurveyMainService;

@Controller
@RequestMapping("/surveyMain/*")
public class SurveyMainController {
	private static final Logger logger = LoggerFactory.getLogger(SurveyMainController.class);

	@Inject
	private SurveyMainService service;

	/*
	 * @GetMapping("/create") public void createGet() throws Exception {
	 * logger.info("createGet call......"); }
	 * 
	 * @PostMapping("/create") public String createPost(SurveyMainVO vo, Model
	 * model) throws Exception { logger.info("createPOST call......");
	 * service.create(vo);
	 * 
	 * return "redirect:/surveyMain/listPage?page=1"; }
	 */

	/*
	 * @GetMapping("/read") public void read(@RequestParam("smno") Integer smno,
	 * Model model) throws Exception { logger.info("read call..........");
	 * model.addAttribute("read", service.read(smno)); }
	 * 
	 * @GetMapping("/update") public void updateGet(@RequestParam("smno")
	 * Integer smno, Model model) throws Exception {
	 * logger.info("updateGet call"); model.addAttribute("vo",
	 * service.read(smno)); }
	 * 
	 * @PostMapping("/update") public String updatePost(SurveyMainVO vo, Model
	 * model) throws Exception { logger.info("updatePost call.......");
	 * 
	 * service.update(vo);
	 * 
	 * return "redirect:/surveyMain/listPage?page=1";
	 * 
	 * }
	 * 
	 * @PostMapping("/delete") public String delete(@RequestParam("smno")
	 * Integer smno) throws Exception { logger.info("deletePost call.......");
	 * 
	 * service.delete(smno);
	 * 
	 * return "redirect:/surveyMain/listPage?page=1"; }
	 */

	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("listPage call........");

		// model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("listPage", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registGET() throws Exception {

		logger.info("Get regist call ...........");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(SurveyMainVO vo, RedirectAttributes rttr,
			Integer smno) throws Exception {

		logger.info("Post regist call........");

		service.regist(vo);
		
		logger.info(vo.toString());

		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/surveyMain/SUCCESS?page=1";
	}

	@GetMapping("/SUCCESS")
	public void SUCCESS(Integer smno,Model model)throws Exception{
		logger.info("SUCCESS call........");
		
		service.maxNumber(smno);
		
		logger.info("smno : " + smno);
		model.addAttribute("smno",service.maxNumber(smno));
		
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("smno") int smno, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		logger.info("Read call........");

		model.addAttribute("SurveyMainVO", service.read(smno));
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("smno") int smno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info("Delete call........");

		service.delete(smno);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/surveyMain/listPage";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void updatePagingGET(int smno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("Get update call........");

		model.addAttribute("SurveyMainVO", service.read(smno));
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePagingPOST(SurveyMainVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info("Post update call........");

		service.update(vo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/surveyMain/listPage";
	}

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	@ResponseBody
	public String uploadFile(MultipartFile file) throws Exception {

		UUID uid = UUID.randomUUID();

		String fileName = file.getOriginalFilename();

		String uploadName = uid + "_" + fileName;

		BufferedImage origin = ImageIO.read(file.getInputStream());
		BufferedImage destImg = new BufferedImage(origin.getWidth(), origin.getHeight(), BufferedImage.TYPE_3BYTE_BGR);

		Graphics2D g = destImg.createGraphics();
		g.drawImage(origin, 0, 0, null);
		g.dispose();
		origin = destImg;

		destImg = Scalr.resize(origin, Scalr.Mode.FIT_EXACT, 300, Scalr.OP_ANTIALIAS);

		FileOutputStream fos = new FileOutputStream("C:\\sss\\" + file.getOriginalFilename());
		FileOutputStream foss = new FileOutputStream("C:\\sss\\" + uploadName);
		ImageIO.write(origin, "jpg", fos);

		ImageIO.write(destImg, "jpg", foss);

		fos.close();
		foss.close();

		return uploadName;
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET, produces = { "image/gif", "image/jpeg", "image/jpg",
			"image/png" })
	public @ResponseBody byte[] show(String name) throws Exception {

		InputStream in = new FileInputStream("C:\\sss\\" + name);

		return IOUtils.toByteArray(in);

	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(String sname, String scompany, MultipartFile profile, Model model) throws Exception {
		logger.info("sname : " + sname);
		logger.info("scompany : " + scompany);
		logger.info("profile : " + profile);

		model.addAttribute("uploadName", profile);

		return "success";
	}

}
