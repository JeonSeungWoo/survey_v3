package org.survey.service;

import java.util.List;

import org.survey.domain.Criteria;
import org.survey.domain.SearchCriteria;
import org.survey.domain.SurveyMainVO;

public interface SurveyMainService {

	public void regist(SurveyMainVO vo) throws Exception;

	public SurveyMainVO read(Integer smno) throws Exception;

	public void update(SurveyMainVO vo) throws Exception;

	public void delete(Integer smno) throws Exception;

	public List<SurveyMainVO> listAll() throws Exception;

	public List<SurveyMainVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<SurveyMainVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public void newArticle(SurveyMainVO vo) throws Exception;
}
