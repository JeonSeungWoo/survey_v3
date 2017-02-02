package org.survey.persistence;

import org.survey.domain.OXAnswerVO;

public interface AnswerDAO {

	public void create(OXAnswerVO vo) throws Exception;
	
}
