package org.survey.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.survey.domain.SurveyDetailVO;


@Repository
public class SurveyDetailDAOImpl implements SurveyDetailDAO {

	@Inject
	private SqlSession session;
	
	private String NAME = "org.survey.mappers.SurveyDetailMapper";
	
	@Override
	public List<SurveyDetailVO> list(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME + ".list",smno);
	}

	@Override
	public void create(SurveyDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(NAME + ".create",vo);

	}

	@Override
	public void update(SurveyDetailVO vo) throws Exception {
		// TODO Auto-generated method stub

		session.update(NAME + ".upadte",vo);
	}

	@Override
	public void delete(Integer sdno) throws Exception {
		// TODO Auto-generated method stub

		session.delete(NAME + ".delete",sdno);
	}

	@Override
	public void addAttach(String fullName) throws Exception {
		// TODO Auto-generated method stub
		session.insert(NAME + ".addAttach",fullName);
		
	}

	@Override
	public List<String> getAttach(Integer sdno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME + ".getAttach",sdno);
	}

	@Override
	public void deleteFile(Integer sdno) {
		
		session.delete(NAME + ".deleteFile", sdno);
		
	}

	@Override
	public void insertFile(SurveyDetailVO vo) {
		
		
		session.update(NAME + ".insertFile", vo);
		
	}

}
