package org.survey.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.QBoardVO;
import org.survey.persistence.QBoardDAO;

@Service
public class QBoardDAOServiceImpl implements QBoardDAOService {
	
	@Inject
	private QBoardDAO dao;

	@Override
	public void qcreate(QBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.qcreate(vo);

	}

	@Override
	public QBoardVO qread(Integer qno) throws Exception {
		// TODO Auto-generated method stub
		return dao.qread(qno);
	}

	@Override
	public void qupdate(QBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.qupdate(vo);
	}

	@Override
	public void qdelete(Integer qno) throws Exception {
		// TODO Auto-generated method stub
		dao.qdelete(qno);

	}

	@Override
	public List<QBoardVO> qlistAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.qlistAll();
	}

}
