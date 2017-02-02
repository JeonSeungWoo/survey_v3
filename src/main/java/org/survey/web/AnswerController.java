package org.survey.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.survey.domain.OXAnswerVO;
import org.survey.service.AnswerService;

@RequestMapping("/answer/*")
@Controller
public class AnswerController {

	private static final Logger logger =
			LoggerFactory.getLogger(AnswerController.class);
	
	
	@Inject
	private AnswerService service;
	
	@RequestMapping(value = "/oxAnswer", method = RequestMethod.POST)
	public ResponseEntity<String> oxAnswer(@RequestBody OXAnswerVO vo,Model model)throws Exception{
		ResponseEntity<String> entity = null;
		
		try {
			
			logger.info("oxAnswer call................");
		
			
			service.create(vo);
			logger.info("vo : " + vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	@RequestMapping(value = "/{sdno}/{userid}", method = RequestMethod.DELETE)
	public ResponseEntity<String> remove(
			@PathVariable("sdno") Integer sdno,
			@PathVariable("userid") String userid) {
		
		ResponseEntity<String> entity = null;
		try {
			
			service.delete(sdno, userid);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
