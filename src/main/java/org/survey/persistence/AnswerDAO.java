package org.survey.persistence;

import java.util.List;

import org.survey.domain.AnswerStat;
import org.survey.domain.OXAnswerVO;
import org.survey.domain.SurveyDetailVO;

public interface AnswerDAO {

	public void create(OXAnswerVO vo) throws Exception;
	
	public void delete(Integer sdno, String userid)throws Exception;
	
	public List<AnswerStat> oxStatistics(Integer smno)throws Exception;
	
	public List<SurveyDetailVO> listAll(Integer smno) throws Exception;
	
;
}
