package org.survey.persistence;

import java.util.List;

import org.survey.domain.SurveyDetailVO;

public interface SurveyDetailDAO {
	
	public List<SurveyDetailVO> list(Integer smno)throws Exception;
	
	public void create(SurveyDetailVO vo) throws Exception;
	public void update(SurveyDetailVO vo)throws Exception;
	public void delete(Integer sdno)throws Exception;

}
