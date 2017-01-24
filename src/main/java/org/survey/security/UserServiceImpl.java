package org.survey.security;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.survey.domain.UserVO;
import org.survey.persistence.UserDAO;

public class UserServiceImpl implements UserService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Inject
	private UserDAO dao;

	@Override
	public UserDetails loadUserByUsername(String membername) throws UsernameNotFoundException {
		
		UserVO vo;
		try {
			vo = dao.getUser(membername);
			SecurityUserVO securityUser = new SecurityUserVO(vo);
			return securityUser;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
