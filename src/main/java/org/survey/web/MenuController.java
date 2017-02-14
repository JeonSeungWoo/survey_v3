package org.survey.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
	private static final Logger logger =
			LoggerFactory.getLogger(MenuController.class);
	
	@GetMapping("/BMI")
	public void BMI()throws Exception{
		logger.info("BMI");
	}
	
	@GetMapping("/lotto")
	public void lotto()throws Exception{
		logger.info("lotto");
	}
	
	@GetMapping("/Quiz")
	public void Quiz()throws Exception{
		logger.info("Quiz");
	}
	
	@GetMapping("/image")
	public void image()throws Exception{
		logger.info("image");
	}
	
	@GetMapping("/iwatch")
	public void spin()throws Exception{
		logger.info("iwatch");
	}
	
}
