package org.survey.service;

import java.util.List;

import org.survey.domain.AnswerStat2;
import org.survey.domain.OXAnswerVO;
import org.survey.domain.SurveyDetailVO;

public interface AnswerService {

	public void create(OXAnswerVO vo) throws Exception;
	public void delete(Integer sdno, String userid)throws Exception;
	public List<AnswerStat2> oxStatistics(Integer smno)throws Exception;
	public List<SurveyDetailVO> listAll(Integer smno) throws Exception;
	
	
}
