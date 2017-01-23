package org.survey.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.survey.domain.Criteria;
import org.survey.domain.MemberVO;
import org.survey.domain.SearchCriteria;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;

	private String NAME = "org.survey.mappers.memberMapper";

	@Override
	public void create(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(NAME + ".create", vo);
	}

	@Override
	public MemberVO read(String membername) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".read", membername);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(NAME + ".update", vo);
	}

	@Override
	public void delete(String membername) throws Exception {
		// TODO Auto-generated method stub
		session.delete(NAME + ".delete", membername);
	}

	@Override
	public List<MemberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME + ".listAll");
	}

	@Override
	public List<MemberVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;

		return session.selectList(NAME + ".listPage", page);
	}

	@Override
	public List<MemberVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".countPaging", cri);
	}

	@Override
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAME + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAME + ".listSearchCount", cri);
	}

	@Override
	public boolean login(MemberVO vo) throws Exception {
		String loginCheck = session.selectOne(NAME + ".login", vo);

		System.out.println(vo.getMembername());
		System.out.println(vo.getEmail());
		if (loginCheck == null) {
			return false;
		}
		return true;
	}

}
