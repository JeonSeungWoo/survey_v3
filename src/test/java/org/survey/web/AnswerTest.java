package org.survey.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.survey.domain.OXAnswerVO;
import org.survey.persistence.AnswerDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class AnswerTest {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AnswerTest.class);

	
	@Inject
	private AnswerDAO dao;
	
	@Test
	public void testCreate()throws Exception{
		
		OXAnswerVO vo =  new OXAnswerVO();	
		
		vo.setSmno(2);
		vo.setSdno(3);
		vo.setUserid("q1");
		vo.setAnswer("O");
		dao.create(vo);
	}
	
	
	}

