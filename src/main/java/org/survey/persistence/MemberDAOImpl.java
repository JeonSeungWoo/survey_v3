package org.survey.persistence;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.survey.domain.MemberVO;
import org.survey.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private String NAME = "org.survey.mappers.memberMapper";
	
	
	@Override
	public void create(MemberVO vo) throws Exception {
		session.insert(NAME + ".create",vo);
		
	}

	@Override
	public MemberVO login(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".login",dto);
	}

	@Override
	public void keepLogin(String userid, String sessionId, Date next) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userid", userid);
		map.put("sessionId",sessionId);
		map.put("next", next);
		session.update(NAME +".keepLogin",map);
		
	}

	@Override
	public MemberVO checkSessionKey(String value) {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".checkSessionKey",value);
	}

	@Override
	public Integer checkId(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".checkId",vo);
	}

}
