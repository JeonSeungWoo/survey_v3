package org.survey.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.survey.domain.UserVO;
import org.survey.persistence.UserDAO;
import org.survey.security.SecurityUserVO;

public class UserServiceImpl implements UserService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Inject
	private UserDAO dao;

	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
		
		UserVO vo;
		try {
			vo = dao.getUser(userId);
			SecurityUserVO securityUser = new SecurityUserVO(vo); 
			return securityUser;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
