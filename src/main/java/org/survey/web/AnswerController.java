package org.survey.web;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.survey.domain.AnswerStat2;
import org.survey.domain.OXAnswerVO;
import org.survey.service.AnswerService;

@RequestMapping("/answer/*")
@Controller
public class AnswerController {

	private static final Logger logger =
			LoggerFactory.getLogger(AnswerController.class);
	
	
	@Inject
	private AnswerService service;
	
	//DB정보 추가
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
	
	//DB정보 삭제
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
	
	@GetMapping("/oxStatistics")
	public void oxStatistics(OXAnswerVO vo,Model model,
			@RequestParam("smno")Integer smno)throws Exception{
		
		logger.info("oxStatistics call.....!!!!");
		
		logger.info("oxStatisticsSmno : " + smno);
		
		List<AnswerStat2> answerList = service.oxStatistics(smno);
		
		model.addAttribute("list",answerList);
			
	}
	
	//통계
	@GetMapping("/oxStatisticsAjax")
	@ResponseBody
	public List<AnswerStat2> oxStatisticsAjax(OXAnswerVO vo,Model model,
			@RequestParam("smno")Integer smno)throws Exception{
		
		logger.info("oxStatistics call.....!!!!");
		
		logger.info("oxStatisticsSmno : " + smno);
		
		
		List<AnswerStat2> answerList = service.oxStatistics(smno);
		
		logger.info("TEST:" + answerList);
		

		//model.addAttribute("answerList", answerList);
		
		return answerList;
		
//		                                 
//		model.addAttribute("list",service.listAll(smno));
		
	}

	
	
//	@RequestMapping("/oxStatistics/{smno}/{sdno}")
//	@ResponseBody
//	public List<AnswerStat> oxStatisticsAjax(Model model,
//			@PathVariable("smno")Integer smno,
//			@PathVariable("sdno")Integer sdno)throws Exception{
//		
//		logger.info("oxStatisticsAjax Call ......!!!!!!!");
//		
//		
//		
//		service.oxStatistics(smno, sdno);
//		
//		logger.info("TEST1:" + service.oxStatistics(smno, sdno));
//		logger.info("oxStatisticsSmno2 : " + smno);
//		logger.info("oxStatisticsSdno2 : " + sdno);
//		
//		List<AnswerStat> answerList = service.oxStatistics(smno, sdno);
//		
//		logger.info("TEST:" + answerList);
//		logger.info("oxStatisticsSmno1 : " + smno);
//		logger.info("oxStatisticsSdno1 : " + sdno);
//		model.addAttribute("answerList", answerList);
//		return answerList;
//		
//	}
	
}
