package org.survey.web;

import static org.junit.Assert.fail;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.survey.domain.BoardVO;
import org.survey.domain.Criteria;
import org.survey.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {
	
	@Inject
	private BoardDAO dao;
	
	@Test
	public void testCreate()throws Exception{
		BoardVO board = new BoardVO();
		board.setBtitle("zzz");
		board.setBcontent("zzz");
		board.setBwriter("고귀한");
		
		dao.create(board);
	}
	
	@Test
	public void testRead()throws Exception{
		System.out.println(dao.read(1).toString());
	}
	
	@Test
	public void testUpdate()throws Exception{
		BoardVO board = new BoardVO();
		board.setBno(1);
		board.setBtitle("우리의 프로젝트는 언제 끝낼 수 있을 것인가?");
		board.setBcontent("이 설문조사는 프로젝트를 하는데 걸리는 기간을 최빈값으로 나태내준다.");
		dao.update(board);
	}
	
	@Test
	public void testDelete()throws Exception{
		dao.delete(1);
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void testListPage()throws Exception {
		int page = 3;
	List<BoardVO> list = dao.listPage(page);
	
	for (BoardVO boardVO : list) {
		System.out.println(boardVO.getBno() + boardVO.getBtitle());
		}
	}
	
	@Test
	public void testListCriteria()throws Exception{
		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		
		List<BoardVO> list = dao.listCriteria(cri);
		
		for (BoardVO boardVO : list) {
			System.out.println(boardVO.getBno() + ":" + boardVO.getBtitle());
		}
	}

}
