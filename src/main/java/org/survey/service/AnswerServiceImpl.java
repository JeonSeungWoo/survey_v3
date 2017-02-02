package org.survey.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.OXAnswerVO;
import org.survey.persistence.AnswerDAO;

@Service
public class AnswerServiceImpl implements AnswerService {

	@Inject
	private AnswerDAO dao;
	
	@Override
	public void create(OXAnswerVO vo) throws Exception {
		
		dao.create(vo);

	}

	@Override
	public void delete(Integer sdno, String userid) throws Exception {
		dao.delete(sdno, userid);
		
	}

}
