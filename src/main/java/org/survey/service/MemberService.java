package org.survey.service;

import java.sql.Date;
import java.util.List;

import org.survey.domain.Criteria;
import org.survey.domain.MemberVO;
import org.survey.domain.SearchCriteria;
import org.survey.dto.MemberDTO;
import org.survey.domain.MemberVO;

public interface MemberService {

	public void create(MemberVO vo)throws Exception;
	
	public MemberVO login(MemberDTO dto)throws Exception;
	
	public void keepLogin(String userid, String sessionId,Date next)throws Exception;
	
	public MemberVO checkSessionKey(String value);

	public Integer checkId(MemberVO vo)throws Exception;
}
