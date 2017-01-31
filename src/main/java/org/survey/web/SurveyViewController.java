package org.survey.web;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.survey.domain.SearchCriteria;
import org.survey.domain.SurveyDetailVO;
import org.survey.service.SurveyDetailService;
import org.survey.service.SurveyMainService;

@Controller
@RequestMapping("/surveyView/*")
public class SurveyViewController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(SurveyViewController.class);
	
	@Inject
	private SurveyMainService mainService;
	
	@Inject
	private SurveyDetailService detailService;
	
	
	
	@RequestMapping(value = "/show", method = RequestMethod.GET, produces = { "image/gif", "image/jpeg", "image/jpg",
	"image/png" })
public @ResponseBody byte[] show(String name) throws Exception {

InputStream in = new FileInputStream("C:\\sss\\" + name);

return IOUtils.toByteArray(in);

}
	
	
	@RequestMapping(value = "/readMain", method = RequestMethod.GET)
	public void readMain(@RequestParam("smno") int smno, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		logger.info("ReadMain call........");

		model.addAttribute("SurveyMainVO", mainService.read(smno));
	}
	
	
	@RequestMapping(value = "/readDetail", method = RequestMethod.GET)
	public String readDetail(Integer qnum, Integer smno, Integer sdno, Model model)
			throws Exception {
		
		
		
		logger.info("ReadDetail call........");
		logger.info("qnum1 : " + qnum);
		
		List<SurveyDetailVO> list  = detailService.detailNum(smno, qnum);
		
		if(list == null || list.size() == 0){
			
			model.addAttribute("qnum", qnum	= -1);
			return "redirect:/surveyView/success"; 
		}
		
		SurveyDetailVO vo = list.get(0);
		
		model.addAttribute("qnum", qnum);
		model.addAttribute("vo", vo );
		
		logger.info("vo : " + vo);
		return null;
	}
	
	@GetMapping("/success")
	public void success()throws Exception{
		
	}
	
}


