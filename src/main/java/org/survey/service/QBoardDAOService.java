package org.survey.service;

import java.util.List;

import org.survey.domain.QBoardVO;

public interface QBoardDAOService {
	public void qcreate(QBoardVO vo)throws Exception;
	public QBoardVO qread(Integer qno)throws Exception;
	public void qupdate(QBoardVO vo)throws Exception;
	public void qdelete(Integer qno)throws Exception;
	public List<QBoardVO> qlistAll()throws Exception;

}
