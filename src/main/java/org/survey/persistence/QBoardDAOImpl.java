package org.survey.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.survey.domain.QBoardVO;

@Repository
public class QBoardDAOImpl implements QBoardDAO {
	
	@Inject
	private SqlSession session;
	
	private String NAME = "org.survey.mappers.qBoardMapper";
	

	@Override
	public void qcreate(QBoardVO vo) throws Exception {
		session.insert(NAME + ".qcreate",vo);

	}

	@Override
	public QBoardVO qread(Integer qno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".qread",qno);
	}

	@Override
	public void qupdate(QBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(NAME + ".qupdate",vo);

	}

	@Override
	public void qdelete(Integer qno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(NAME + ".qdelete",qno);
	}

	@Override
	public List<QBoardVO> qlistAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME + ".qlistAll");
	}

}
