package org.survey.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.survey.domain.AnswerStat;
import org.survey.domain.OXAnswerVO;
import org.survey.domain.SurveyDetailVO;

@Repository
public class AnswerDAOImpl implements AnswerDAO {
  
	private static final Logger logger =
			LoggerFactory.getLogger(AnswerDAOImpl.class);
	
	@Inject
	private SqlSession session;
	
	private static final String NAME = "org.survey.mappers.AnswerMapper";
	
	
	@Override
	public void create(OXAnswerVO vo) throws Exception {
		
		logger.info("DAO_VO : " + vo );
		
		
		session.insert(NAME + ".createAnswer",vo);
	}


	@Override
	public void delete(Integer sdno, String userid) throws Exception {
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("sdno",sdno);
		paramMap.put("userid",userid);
		
		session.delete(NAME + ".deleteAnswer",paramMap);
	}


	@Override
	public List<AnswerStat> oxStatistics(Integer smno) throws Exception {
	
		
		
		return session.selectList(NAME + ".oxStatistics",smno);
		
	}


	@Override
	public List<SurveyDetailVO> listAll(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME +".oxList",smno);
	}


}
