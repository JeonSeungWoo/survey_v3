package org.survey.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.survey.domain.MemberVO;
import org.survey.persistence.MemberDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class MemberTest {
	
	@Inject
	private MemberDAO dao;

	@Test
	public void createTest() throws Exception {
		MemberVO vo = new MemberVO();
		vo.setMembername("강요천");
		vo.setEmail("zerock@naver.com");
		
		dao.create(vo);
	}

	@Test
	public void readTest() throws Exception {
		
		System.out.println(dao.read("고귀한"));
	}
	
	@Test
	public void updateTest() throws Exception {
		MemberVO vo = new MemberVO();
		vo.setEmail("peakapeak@naver.com");
		vo.setMembername("전승우");
		
		dao.update(vo);
	}
	
	@Test
	public void deleteTest() throws Exception {
		dao.delete("강요천");
	}
}
