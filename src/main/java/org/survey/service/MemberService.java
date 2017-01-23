package org.survey.service;

import java.util.List;

import org.survey.domain.Criteria;
import org.survey.domain.MemberVO;
import org.survey.domain.SearchCriteria;
import org.survey.domain.MemberVO;

public interface MemberService {

	public void create(MemberVO vo) throws Exception;

	public MemberVO read(String membername) throws Exception;

	public void update(MemberVO vo) throws Exception;

	public void delete(String membername) throws Exception;

	public List<MemberVO> listAll() throws Exception;

	public List<MemberVO> listPage(int page) throws Exception;

	public List<MemberVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<MemberVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	public boolean login(MemberVO vo) throws Exception;

}
