package org.survey.persistence;

import java.util.List;

import org.survey.domain.SurveyMainVO;

public interface SurveyMainDAO {
	
	public void create(SurveyMainVO vo)throws Exception;
	
	public SurveyMainVO read(Integer smno)throws Exception;
	
	public void update(SurveyMainVO vo)throws Exception;
	
	public void delete(Integer smno)throws Exception;
	
	public List<SurveyMainVO> listAll()throws Exception;
	
	public List<SurveyMainVO> listPage(int page)throws Exception;
	
	public int count (int page)throws Exception;	
	
	
}
