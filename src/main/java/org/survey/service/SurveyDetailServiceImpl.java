package org.survey.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.survey.domain.SurveyDetailVO;
import org.survey.persistence.SurveyDetailDAO;

@Service
public class SurveyDetailServiceImpl implements SurveyDetailService {

	@Inject
	private SurveyDetailDAO dao;
	
	@Override
	public List<SurveyDetailVO> list(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(smno);
	}
	
	
	@Transactional
	@Override
	public void create(SurveyDetailVO vo) throws Exception {
		
		
		
		String file = vo.getAttachFile();
		
		dao.create(vo);
		dao.addAttach(vo.getAttachFile());
		
	}

	@Transactional	
	@Override
	public void update(SurveyDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);
		
		
		dao.deleteFile(vo.getSdno());
		
		if(vo.getAttachFile() == null || vo.getAttachFile().trim().length() == 0){
			
			
			
			
		}else{
			
			dao.insertFile(vo);
		}
		
	}

	@Override
	public void delete(Integer sdno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(sdno);
	}


	@Override
	public List<String> getAttach(Integer sdno) throws Exception {
		// TODO Auto-generated method stub
		return dao.getAttach(sdno);
	}


	@Override
	public SurveyDetailVO readDetail(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return dao.readDetail(smno);
	}


	


	@Override
	public int detailCount(Integer smno) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailCount(smno);
	}


	@Override
	public List<SurveyDetailVO> detailNum(Integer smno, Integer qnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailNum(smno, qnum);
	}

}
