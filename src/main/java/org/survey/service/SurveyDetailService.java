package org.survey.service;

import java.util.List;

import org.survey.domain.SurveyDetailVO;

public interface SurveyDetailService {
	
public List<SurveyDetailVO> list(Integer smno)throws Exception;
	
	public void create(SurveyDetailVO vo) throws Exception;
	public void update(SurveyDetailVO vo)throws Exception;
	public void delete(Integer sdno)throws Exception;
	public List<String> getAttach(Integer sdno)throws Exception;
	public SurveyDetailVO readDetail(Integer smno) throws Exception;
	
	public List<SurveyDetailVO> detailNum(int qnum)throws Exception;
	public int detailCount(int qnum)throws Exception;
}
