package org.survey.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.survey.domain.SurveyMainVO;


@Repository
public class SurveyMainDAOImpl implements SurveyMainDAO {

	@Inject
	private SqlSession session;
	
	private String NAME = "org.survey.mappers.SurveyMainMapper";
	
	
	@Override
	public void create(SurveyMainVO vo) throws Exception {
		
		session.insert(NAME+".create",vo);

	}

	@Override
	public SurveyMainVO read(Integer smno) throws Exception {
		
		return session.selectOne(NAME+".read",smno);
	}

	@Override
	public void update(SurveyMainVO vo) throws Exception {
		
		session.update(NAME + ".update",vo);
	}

	@Override
	public void delete(Integer smno) throws Exception {
		
		session.delete(NAME + ".delete",smno);

	}

	@Override
	public List<SurveyMainVO> listAll() throws Exception {
		
		return session.selectList(NAME +".listAll");
	}

	@Override
	public List<SurveyMainVO> listPage(int page) throws Exception {
		if(page <=0){
			page = 1;
		}
		page = (page-1)*15;
		
		return session.selectList(NAME + ".listPage",page);
	}

	@Override
	public int count(int page) throws Exception {
		
		return session.selectOne(NAME + ".count",page);
	}

}
