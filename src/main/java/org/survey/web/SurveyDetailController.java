package org.survey.web;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.survey.domain.SurveyDetailVO;
import org.survey.service.SurveyDetailService;

@Controller
@RequestMapping("/surveyDetail")
public class SurveyDetailController {
	private static final Logger logger = LoggerFactory.getLogger(SurveyDetailController.class);
	
	@Inject
	private SurveyDetailService service;
	
	@PostMapping("")
	public ResponseEntity<String> register(SurveyDetailVO vo){
		
		ResponseEntity<String> entity = null;
		
		try {
			
			
			
			
			service.create(vo);
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
	
	
	
	
	@RequestMapping(value ="/{sdno}",method = {RequestMethod.PUT,RequestMethod.PATCH})
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
			logger.info("entity : " +entity);
			
			
			
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
