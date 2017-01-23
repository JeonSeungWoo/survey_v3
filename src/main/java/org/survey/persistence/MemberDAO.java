package org.survey.persistence;

import java.util.List;

import org.survey.domain.Criteria;
import org.survey.domain.MemberVO;
import org.survey.domain.SearchCriteria;


public interface MemberDAO {
	
	public void create(MemberVO vo)throws Exception;
	
	public MemberVO read(String membername)throws Exception;
	
	public void update(MemberVO vo)throws Exception;
	
	public void delete(String membername)throws Exception;
	
	public List<MemberVO> listAll()throws Exception;
	
	public List<MemberVO> listPage(int page)throws Exception;
	
	public List<MemberVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public boolean login(MemberVO vo) throws Exception;

	
}
