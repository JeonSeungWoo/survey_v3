package org.survey.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.survey.domain.OXAnswerVO;
import org.survey.web.AnswerController;

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

}
