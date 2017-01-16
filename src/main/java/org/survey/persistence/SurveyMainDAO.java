package org.survey.persistence;

import java.util.List;

import org.survey.domain.Criteria;
import org.survey.domain.SearchCriteria;
import org.survey.domain.SurveyMainVO;

public interface SurveyMainDAO {
	
	public void create(SurveyMainVO vo)throws Exception;
	
	public SurveyMainVO read(Integer smno)throws Exception;
	
	public void update(SurveyMainVO vo)throws Exception;
	
	public void delete(Integer smno)throws Exception;
	
	public List<SurveyMainVO> listAll()throws Exception;
	
	public List<SurveyMainVO> listPage(int page)throws Exception;
	
	public List<SurveyMainVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	public List<SurveyMainVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
}
