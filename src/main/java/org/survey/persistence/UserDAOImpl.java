package org.survey.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.survey.domain.UserVO;

public class UserDAOImpl implements UserDAO {

	private static final Logger logger = Logger.getLogger(UserDAOImpl.class);
	
	@Inject
	private SqlSession session;
	
	@Override
	public UserVO getUser(String membername) throws Exception {
		
		logger.info("getUser call.....................");
		
		return session.selectOne("org.survey.mappers.loginUser", membername);
	}

}
