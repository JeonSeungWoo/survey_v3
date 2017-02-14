package org.survey.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.servlet.ModelAndView;
import org.survey.domain.Email;
import org.survey.mail.EmailSender;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:net/saltfactory/apps/common/config/ConfigContext.xml",
  "classpath:net/saltfactory/apps/mail/config/MailContext.xml" })
public class MailTest {

	@Autowired
	private MailSender sender;
	
	@Autowired
	protected JavaMailSender mailSender;
	
	  @Autowired
	    private EmailSender emailSender;
	
	@Test
	public void testSendMail() throws Exception{
		   Email email = new Email();
	         
	        String reciver = "usdrd@naver.com"; //받을사람의 이메일입니다.
	        String subject = "hi";
	        String content = "hello";
	         
	        email.setReciver(reciver);
	        email.setSubject(subject);
	        email.setContent(content);
	        emailSender.SendEmail(email);
	         
	        return;
	}
	
}
