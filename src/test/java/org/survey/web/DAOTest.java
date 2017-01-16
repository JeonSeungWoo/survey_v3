package org.survey.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.survey.domain.SurveyMainVO;
import org.survey.persistence.SurveyMainDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class DAOTest {
	
	@Inject
	private SurveyMainDAO dao;
	
	
	@Test
	public void createTest()throws Exception{
		SurveyMainVO vo = new SurveyMainVO();
		vo.setSmtitle("원빈화 에대한 설문");
		vo.setSmcontent("원빈화 얼마나 진행 되었는가?");
		vo.setSmwriter("gonoble");
		vo.setSmimage("이미지");
		
		dao.create(vo);
		
	}
	
	@Test
	public void readTest()throws Exception{
		System.out.println(dao.read(1));
	}
	
	@Test
	public void updateTest()throws Exception{
		SurveyMainVO vo = new SurveyMainVO();
		vo.setSmtitle("원빈화 에대한 설문");
		vo.setSmcontent("원빈화 얼마나 진행 되었는가?");
		vo.setSmwriter("gonoble");
		vo.setSmimage("이미지123");
		vo.setSmno(1);
		
		dao.update(vo);
	}
	
	@Test
	public void deleteTest()throws Exception{
		dao.delete(1);
	}
	
}
