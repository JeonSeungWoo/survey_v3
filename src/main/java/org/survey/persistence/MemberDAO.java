package org.survey.persistence;

import java.sql.Date;

import org.survey.domain.MemberVO;
import org.survey.dto.MemberDTO;


public interface MemberDAO {
	
	public void create(MemberVO vo)throws Exception;
	
	public MemberVO login(MemberDTO dto)throws Exception;
	
	public void keepLogin(String userid, String sessionId,Date next)throws Exception;
	
	public MemberVO checkSessionKey(String value);
	
	public Integer checkId(MemberVO vo)throws Exception;

	
}
