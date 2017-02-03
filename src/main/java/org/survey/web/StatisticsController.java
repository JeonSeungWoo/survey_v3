package org.survey.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/statistics/*")
@Controller
public class StatisticsController {
	private static final Logger logger =
			LoggerFactory.getLogger(StatisticsController.class);
	
	
	@GetMapping("/statistics")
	public void statistics()throws Exception{
		logger.info("statistics call!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
	}

}
