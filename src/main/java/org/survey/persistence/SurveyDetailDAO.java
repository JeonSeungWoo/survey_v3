package org.survey.persistence;

import java.util.List;

import org.survey.domain.SurveyDetailVO;
import org.survey.domain.SurveyMainVO;

public interface SurveyDetailDAO {
	
	public List<SurveyDetailVO> list(Integer smno)throws Exception;
	
	public void create(SurveyDetailVO vo) throws Exception;
	public void update(SurveyDetailVO vo)throws Exception;
	public void delete(Integer sdno)throws Exception;
	
	public void addAttach(String fullName)throws Exception;
	
	public List<String> getAttach(Integer sdno)throws Exception;

	public void deleteFile(Integer sdno);
	
	public void insertFile(SurveyDetailVO vo);
	
	public SurveyDetailVO readDetail(Integer smno) throws Exception;
	
	public List<SurveyDetailVO> detailNum(Integer smno,Integer qnum)throws Exception;
	
	public int detailCount(Integer smno)throws Exception;
	
}
