package org.survey.web;

import static org.junit.Assert.fail;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;
import org.survey.domain.BoardVO;
import org.survey.domain.Criteria;
import org.survey.domain.SearchCriteria;
import org.survey.persistence.BoardDAO;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);

	
	@Inject
	private BoardDAO dao;
	
	@Test
	public void testCreate()throws Exception{
		for (int i = 0; i < 111; i++) {
			
		
		BoardVO board = new BoardVO();
		board.setBtitle("ㅋㅋㅋ"+i);
		board.setBcontent("ㅋㅋㅋ"+i);
		board.setBwriter("고귀한"+i);
		
		dao.create(board);
		}
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
	
	@Test
	public void testURI()throws Exception {
		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
				.path("/board/read")
				.queryParam("bno", 12)
				.queryParam("perPageNum", 20)
				.build();
		
		logger.info("/board/read?bno=12&perPageNum=20");
		logger.info(uriComponents.toString());
	}
	
	@Test
	public void testURI2()throws Exception {
		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
				.path("/{module}/{page}")
				.queryParam("bno", 12)
				.queryParam("perPageNum", 20)
				.build()
				.expand("board","read")
				.encode();
		
		logger.info("/board/read?bno=12&perPageNum=20");
		logger.info(uriComponents.toString());
	}
	
	@Test
	public void testDynamic1() throws Exception {
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(1);
		cri.setKeyword("ㅋㅋㅋ");
		cri.setSearchType("t");
		
		logger.info("============================================================");
		
		List<BoardVO> list = dao.listSearch(cri);
		
		for (BoardVO boardVO : list) {
			logger.info(boardVO.getBno() + ": " + boardVO.getBtitle());
		}
		
		logger.info("==================================================================");
		
		logger.info("COUNT: " + dao.listSearchCount(cri));
	}
	
}
