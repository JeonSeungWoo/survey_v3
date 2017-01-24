package org.survey.security;

import java.util.Collection;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class SurveyUserAuthProvider implements AuthenticationProvider {
	
	private static final Logger logger = LoggerFactory.getLogger(SurveyUserAuthProvider.class);
	
	@Inject
	private UserService userService;

	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		
		
		logger.info("isAuthenticated: "+auth.isAuthenticated());
	
		String membername = auth.getName();
		String email = (String) auth.getCredentials();
		
		logger.info("MEMBERNAME:" + membername);
		logger.info("EMAIL:" + email);

		UserDetails securityUser  = userService.loadUserByUsername(membername);

		logger.info("securityUser: " + securityUser);

		if (securityUser == null || !securityUser.getUsername().equalsIgnoreCase(membername)) {
			throw new BadCredentialsException("Username not found.");
		}

		logger.info("securityUser getPassword: " + securityUser.getPassword());
		logger.info("Authentication password: " + email);

		
		if (auth.isAuthenticated() == false && !email.equals(securityUser.getPassword())) {
			logger.error("---------------------------------");
			logger.error("EMAIL ERROR");
			logger.error("---------------------------------");
			
			throw new BadCredentialsException("Wrong password.");
		}
		

		Collection<? extends GrantedAuthority> authorities = securityUser.getAuthorities();
				
		logger.info("Authorities: " + authorities);	

		return new UsernamePasswordAuthenticationToken(securityUser, email, authorities);
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return true;
	}

}
