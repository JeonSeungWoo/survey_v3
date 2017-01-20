package org.survey.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.survey.domain.SurveyDetailVO;
import org.survey.service.SurveyDetailService;

@Controller
@RequestMapping("/surveyDetail")
public class SurveyDetailController {
	private static final Logger logger = LoggerFactory.getLogger(SurveyDetailController.class);
	
	@Inject
	private SurveyDetailService service;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	@GetMapping(value = "/show",produces = {"image/jpg","image/gif","image/png"})
	public @ResponseBody byte[] createGet(String fileName)throws Exception{
		logger.info("GET create call......");
		
		InputStream in =  new FileInputStream(uploadPath +fileName);
		
		return IOUtils.toByteArray(in);
		
	}
	
	private String detailUploadFile(String originalName, byte[]fileData)throws Exception{
		
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		File target = new File(uploadPath,savedName);
		
		FileCopyUtils.copy(fileData,target);
		
		return savedName;
		
	}
	
	
	@PostMapping("")
	public ResponseEntity<String> register(SurveyDetailVO vo,
			 MultipartFile file, Model model)throws Exception{
		
		ResponseEntity<String> entity = null;
		
		try {
			
//			logger.info("originalName : " + file.getOriginalFilename());
//			logger.info("size : " + file.getSize());
//			logger.info("contentType : " + file.getContentType());
//			
//			String savedName = detailUploadFile(file.getOriginalFilename(),file.getBytes());
//			
//			model.addAttribute("savedName",savedName);
			
			
			service.create(vo);
			
//			vo.setSdimage(savedName);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
			//logger.info("entity :" +entity);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
			
			logger.info("entity :" +entity);
		}
		
		return entity;
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
	
	@RequestMapping(value ="/{sdno}",
			method = {RequestMethod.PUT,RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("sdno") Integer sdno,
			SurveyDetailVO vo)throws Exception{
		
		ResponseEntity<String> entity = null;
		
		try {
			vo.setSdno(sdno);
			
			service.update(vo);
			
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("-----------------------------");
			logger.info("entity :" +entity);
			
			
			
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
	
	
	
	
	

}
