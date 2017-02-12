package org.survey.web;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.survey.domain.SurveyDetailVO;
import org.survey.service.SurveyDetailService;
import org.survey.util.UploadFileUtils;

@Controller
@RequestMapping("/surveyDetail")
public class SurveyDetailController {
	private static final Logger logger = LoggerFactory.getLogger(SurveyDetailController.class);
	
	@Inject
	private SurveyDetailService service;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	private String uploadFile(String originalName, byte[]fileData)throws Exception{
		
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		File target = new File("C:\\sss",savedName);
		
		FileCopyUtils.copy(fileData,target);
		
		return savedName;
		
	}
	
	
	@PostMapping("")
	public ResponseEntity<String> register(SurveyDetailVO vo, MultipartFile sdAttach, Model model)throws Exception{
		
		ResponseEntity<String> entity = null;
		
		try {
			
			
			
			logger.info("1============================");
			logger.info("VO: "+vo);
			
			logger.info("Attach: " + sdAttach);
			
			//upload 
			String savedName = uploadFile(sdAttach.getOriginalFilename(), sdAttach.getBytes());
			
			vo.setAttachFile(savedName);
			

			logger.info("2============================");
			logger.info("VO: "+vo);
			
			
			service.create(vo);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
			//logger.info("entity :" +entity);
			model.addAttribute("result", "SUCCESS");
			
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
			
			logger.info("entity :" +entity);
			model.addAttribute("result", "FAIL");
		}
		
		return new ResponseEntity<>(
				UploadFileUtils.uploadFile(uploadPath,
						sdAttach.getOriginalFilename(), 
						sdAttach.getBytes()),
				HttpStatus.CREATED);
	}
	
/*	@PostMapping("")
	public ResponseEntity<String> register(SurveyDetailVO vo){
		
		ResponseEntity<String> entity = null;
		
		try {
			
			//service.create(vo);
			//entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			logger.info("vo : " + vo);
			//logger.info("entity :" +entity);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
			
			logger.info("entity :" +entity);
		}
		
		return entity;
	}*/
	
	@GetMapping("/all/{smno}")
	public ResponseEntity<List<SurveyDetailVO>>list(
			@PathVariable("smno") Integer smno) throws Exception{
		
		ResponseEntity<List<SurveyDetailVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(
					service.list(smno),HttpStatus.OK);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			
			
		}
		
		return entity;
	}
	
	@RequestMapping(value ="/{sdno}",method = {RequestMethod.PUT,RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("sdno") Integer sdno, @RequestBody SurveyDetailVO vo)throws Exception{
		
		ResponseEntity<String> entity = null;
		
		try {
			
			logger.info("-----------------------------------");
			logger.info("-----------------------------------");
			logger.info("sdno : " + sdno);
			logger.info("sdtitle : " + vo.getSdtitle());
			logger.info("vo: " + vo);
			logger.info("vo file:"  + vo.getAttachFile());
			
			service.update(vo);
		
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
			
		} catch (Exception e) {
			
		 e.printStackTrace();
		 entity = new ResponseEntity<String>(
				 e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value ="/{sdno}",method = {RequestMethod.DELETE})
	public ResponseEntity<String> delete(
			@PathVariable("sdno")Integer sdno)throws Exception{
		
		ResponseEntity<String> entity = null;
		
		try {
			
			
			service.delete(sdno);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(
					e.getMessage(),HttpStatus.BAD_REQUEST);
			
		}
		
		
		return entity;
		
	}
	
	@RequestMapping("/getAttach/{sdno}")
	@ResponseBody
	public List<String> getAttach(@PathVariable("sdno")Integer sdno)
	throws Exception{
		logger.info("getAttach .............");
		
		return service.getAttach(sdno);
	}
	
	
	
	
	

}
