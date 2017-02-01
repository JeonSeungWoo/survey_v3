package org.survey.service;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.Criteria;
import org.survey.domain.MemberVO;
import org.survey.domain.SearchCriteria;
import org.survey.dto.MemberDTO;
import org.survey.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	@Override
	public void create(MemberVO vo) throws Exception {
		dao.create(vo);
		
	}

	@Override
	public MemberVO login(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(dto);
	}

	@Override
	public void keepLogin(String userid, String sessionId, Date next) throws Exception {
		dao.keepLogin(userid, sessionId, next);
		
	}

	@Override
	public MemberVO checkSessionKey(String value) {
		// TODO Auto-generated method stub
		return dao.checkSessionKey(value);
	}

	@Override
	public Integer checkId(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkId(vo);
	}

}
