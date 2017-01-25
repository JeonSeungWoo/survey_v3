package org.survey.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.survey.domain.UserVO;

public class SecurityUserVO implements UserDetails {
	
	private UserVO vo;
	private SurveyRole role;
	
	

	public SecurityUserVO(UserVO vo) {
		
		this.vo = vo;
		this.role = new SurveyRole("ROLE_"+vo.getRole());
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		return authorities;
	}

	@Override
	public String getPassword() {
		
		return vo.getEmail();
	}

	@Override
	public String getUsername() {
		
		return vo.getMembername();
	}

	@Override
	public boolean isAccountNonExpired() {
		
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		
		return true;
	}

	@Override
	public boolean isEnabled() {
		
		return true;
	}

}
