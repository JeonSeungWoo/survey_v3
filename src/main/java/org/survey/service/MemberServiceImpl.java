package org.survey.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.survey.domain.Criteria;
import org.survey.domain.MemberVO;
import org.survey.domain.SearchCriteria;
import org.survey.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	@Override
	public void create(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public MemberVO read(String membername) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(membername);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void delete(String membername) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(membername);
	}

	@Override
	public List<MemberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<MemberVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return dao.listPage(page);
	}

	@Override
	public List<MemberVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}

	@Override
	public List<MemberVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearchCount(cri);
	}

	@Override
	public boolean login(MemberVO vo) throws Exception {
		
		boolean tf = dao.login(vo);
		System.out.println(tf + " true or false ");

		return dao.login(vo);
	}

}
