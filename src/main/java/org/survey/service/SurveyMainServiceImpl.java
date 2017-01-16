package org.survey.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.Criteria;
import org.survey.domain.SearchCriteria;
import org.survey.domain.SurveyMainVO;
import org.survey.persistence.SurveyMainDAO;

@Service
public class SurveyMainServiceImpl implements SurveyMainService {

	@Inject
	private SurveyMainDAO dao;

	@Override
	public void regist(SurveyMainVO vo) throws Exception {
		dao.create(vo);		
	}

	@Override
	public SurveyMainVO read(Integer smno) throws Exception {

		return dao.read(smno);
	}

	@Override
	public void update(SurveyMainVO vo) throws Exception {

		dao.update(vo);

	}

	@Override
	public void delete(Integer smno) throws Exception {

		dao.delete(smno);

	}

	@Override
	public List<SurveyMainVO> listAll() throws Exception {

		return dao.listAll();
	}

	@Override
	public List<SurveyMainVO> listCriteria(Criteria cri) throws Exception {

		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

	@Override
	public List<SurveyMainVO> listSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return dao.listSearchCount(cri);
	}

}
