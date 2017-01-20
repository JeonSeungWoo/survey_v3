package org.survey.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

/*	@GetMapping("/create")
	public void createGet() throws Exception {
		logger.info("createGet call......");
	}

	@PostMapping("/create")
	public String createPost(SurveyMainVO vo, Model model) throws Exception {
		logger.info("createPOST call......");
		service.create(vo);

		return "redirect:/surveyMain/listPage?page=1";
	}*/

/*	@GetMapping("/read")
	public void read(@RequestParam("smno") Integer smno, Model model) throws Exception {
		logger.info("read call..........");
		model.addAttribute("read", service.read(smno));
	}

	@GetMapping("/update")
	public void updateGet(@RequestParam("smno") Integer smno, Model model) throws Exception {
		logger.info("updateGet call");
		model.addAttribute("vo", service.read(smno));
	}

	@PostMapping("/update")
	public String updatePost(SurveyMainVO vo, Model model) throws Exception {
		logger.info("updatePost call.......");

		service.update(vo);

		return "redirect:/surveyMain/listPage?page=1";

	}

	@PostMapping("/delete")
	public String delete(@RequestParam("smno") Integer smno) throws Exception {
		logger.info("deletePost call.......");

		service.delete(smno);

		return "redirect:/surveyMain/listPage?page=1";
	}*/
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@GetMapping(value = "/show",produces = {"image/jpg","image/gif","image/png"})
	public @ResponseBody byte[] createGet(String fileName)throws Exception{
		logger.info("GET create call......");
		
		InputStream in =  new FileInputStream(uploadPath +fileName);
		
		return IOUtils.toByteArray(in);
		
	}
	
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		// model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("listPage", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	private String uploadFile(String originalName, byte[]fileData)throws Exception{
		
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		File target = new File(uploadPath,savedName);
		
		FileCopyUtils.copy(fileData,target);
		
		return savedName;
		
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(SurveyMainVO vo, RedirectAttributes rttr,
			@RequestParam("file") MultipartFile file) throws Exception {

		logger.info("regist post ...........");
		logger.info(vo.toString());
		
		logger.info("originalName : " + file.getOriginalFilename());
		logger.info("size : " + file.getSize());
		logger.info("contentType : " + file.getContentType());
		
		String savedName = uploadFile(file.getOriginalFilename(),file.getBytes());

		rttr.addAttribute("uploadName",savedName);
		vo.setSmimage(savedName);
		
		service.regist(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/surveyMain/listPage?page=1";
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("smno") int smno, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute("SurveyMainVO",service.read(smno));
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("smno") int smno,
			SearchCriteria cri, RedirectAttributes rttr) throws Exception {

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

		model.addAttribute("SurveyMainVO",service.read(smno));
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePagingPOST(SurveyMainVO vo, SearchCriteria cri,
			RedirectAttributes rttr,
			@RequestParam("file") MultipartFile file) throws Exception {

		logger.info(cri.toString());
		
		UUID uid = UUID.randomUUID();
		
		String fileName = file.getOriginalFilename();
		
		String uploadName = uid + "_" + fileName;
		
		FileOutputStream fos = new FileOutputStream(uploadPath+uploadName);
		
		IOUtils.copy(file.getInputStream(),fos);
		fos.close();

		rttr.addAttribute("uploadName",uploadName);
		vo.setSmimage(uploadName);
		
		
		
		service.update(vo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/surveyMain/listPage";
	}

}
