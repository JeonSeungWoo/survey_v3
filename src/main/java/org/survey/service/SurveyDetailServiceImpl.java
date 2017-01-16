package org.survey.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.SurveyDetailVO;
import org.survey.persistence.SurveyDetailDAO;

@Service
public class SurveyDetailServiceImpl implements SurveyDetailService {

	@Inject
	private SurveyDetailDAO dao;
	
	@Override
	public List<SurveyDetailVO> list(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(smno);
	}

	@Override
	public void create(SurveyDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);

	}

	@Override
	public void update(SurveyDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void delete(Integer sdno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(sdno);
	}

}
