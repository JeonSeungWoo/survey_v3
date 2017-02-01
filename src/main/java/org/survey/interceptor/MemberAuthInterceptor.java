package org.survey.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;
import org.survey.domain.MemberVO;
import org.survey.service.MemberService;

public class MemberAuthInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = 
			LoggerFactory.getLogger(MemberAuthInterceptor.class);
	
	@Inject
	private MemberService service;
	
	private void saveDest(HttpServletRequest req){
		
		String uri = req.getRequestURI();
		
		String query = req.getQueryString();
		
		if(query == null || query.equals("null")){
			query = "";
		}else{
			query = "?" + query;
				
		}
		if(req.getMethod().equals("GET")){
			logger.info("dest : " +(uri+query));
			req.getSession().setAttribute("dest", uri+query);
			
		}
		
	}
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session =  request.getSession();
		
		if(session.getAttribute("login") == null){
			logger.info("login failure ......");
			
			saveDest(request);
			
		Cookie loginCookie = WebUtils.getCookie(request,"loginCookie");
		if(loginCookie != null){
			MemberVO memberVO = service.checkSessionKey(loginCookie.getValue());
			logger.info("memberVO : " + memberVO);
			
			if(memberVO != null){
				session.setAttribute("login",memberVO);
				return true;
			}
			
		}
		
		response.sendRedirect("/member/login");
		return false;
			
		}
		
		
		
		return true;
	}
	
	
}
