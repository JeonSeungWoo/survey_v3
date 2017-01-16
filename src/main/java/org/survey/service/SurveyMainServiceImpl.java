package org.survey.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.SurveyMainVO;
import org.survey.persistence.SurveyMainDAO;

@Service
public class SurveyMainServiceImpl implements SurveyMainService {

	@Inject
	private SurveyMainDAO dao;
	
	@Override
	public void create(SurveyMainVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);

	}

	@Override
	public SurveyMainVO read(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(smno);
	}

	@Override
	public void update(SurveyMainVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);

	}

	@Override
	public void delete(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(smno);

	}

	@Override
	public List<SurveyMainVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<SurveyMainVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return dao.listPage(page);
	}

	@Override
	public int count(int page) throws Exception {
		// TODO Auto-generated method stub
		return dao.count(page);
	}

}
