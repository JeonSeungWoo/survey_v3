package org.survey.persistence;

import org.survey.domain.UserVO;

public interface UserDAO {

	public UserVO getUser(String membername) throws Exception;
	
}
