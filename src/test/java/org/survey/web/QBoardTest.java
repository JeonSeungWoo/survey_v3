package org.survey.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.survey.domain.QBoardVO;
import org.survey.persistence.QBoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class QBoardTest {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(QBoardTest.class);

	@Inject
	private QBoardDAO dao;
	
	@Test
	public void testCreate()throws Exception{
		
		QBoardVO vo =  new QBoardVO();	
		vo.setQtitle("d");
		vo.setQcontent("a");
		vo.setQwriter("d");
		
	
		dao.qcreate(vo);
	}
	
	@Test
	public void testRead()throws Exception{
		dao.qread(1);
		
	}
	
	@Test
	public void testDelete()throws Exception{
		dao.qdelete(1);
		
	}
	
	@Test
	public void testUpdate()throws Exception{
		QBoardVO vo =  new QBoardVO();	
		vo.setQtitle("a");
		vo.setQcontent("b");
		vo.setQwriter("c");
		vo.setQno(1);
	
		dao.qupdate(vo);
	}
}
