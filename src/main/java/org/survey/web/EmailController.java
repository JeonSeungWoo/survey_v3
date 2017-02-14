package org.survey.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.survey.domain.Email;
import org.survey.mail.EmailSender;

@Controller
@RequestMapping("/email")
public class EmailController {

	  @Autowired
	    private EmailSender emailSender;
	     
	    @RequestMapping("/send")
	    public ModelAndView sendEmailAction () throws Exception {
	 
	        Email email = new Email();
	         
	        String reciver = "usdrd@naver.com"; //받을사람의 이메일입니다.
	        String subject = "hi";
	        String content = "hello";
	         
	        email.setReciver(reciver);
	        email.setSubject(subject);
	        email.setContent(content);
	        emailSender.SendEmail(email);
	         
	        return new ModelAndView("success");
	    }
	
}
