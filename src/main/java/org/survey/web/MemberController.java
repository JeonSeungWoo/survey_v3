package org.survey.web;

import java.io.PrintWriter;
import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;
import org.survey.domain.MemberVO;
import org.survey.dto.MemberDTO;
import org.survey.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = 
			LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService service;
	
	
	@GetMapping("/create")
	public void createGet()throws Exception{
		logger.info("createGet call.....!!!!");
		
	}
	
	@PostMapping("/create")
	public String createPost(MemberVO vo,Model model)throws Exception{
		logger.info("createPost call .....!!!");
		
		service.create(vo);
		
		return "redirect:/member/login";
	}
	
	
	@GetMapping("/login")
	public void loginGET(@ModelAttribute("dto") MemberDTO dto)throws Exception{
		logger.info("loaginGET call......");
	}
	
	@PostMapping("/loginPost")
	public void loginPOST(MemberDTO dto,
			HttpSession session,Model model)throws Exception{
		
		logger.info("loginPost call....");
		
		logger.info("DTO: " + dto.getUserid()+dto.getUserpw());
		
		MemberVO vo = service.login(dto);
		
		if(vo == null){
			return;
		}
		
		model.addAttribute("memberVO",vo);
		
		if(dto.isUseCookie()){
			int amount = 60*60*24*7;
			
			Date sessionLimit =
					new Date(System.currentTimeMillis()+(1000*amount));
			service.keepLogin(vo.getUserid(), session.getId(), sessionLimit);
			
			
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response,
			HttpSession session)throws Exception{
		
		Object obj = session.getAttribute("login");
		
		if(obj != null){
			MemberVO vo = (MemberVO)obj;
			
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
			if(loginCookie != null){
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUserid(), session.getId(),new Date(0));
			}
		}
		return "redirect:/member/login";
	}
	
	@RequestMapping(value ="/chkDupid")
	public void chekid(HttpServletRequest req, HttpServletResponse res,Model model)throws Exception{
		PrintWriter out = res.getWriter();
		
		try {
			String paramid = (req.getParameter("userid")==null)?"":
				String.valueOf(req.getParameter("userid"));
			
			MemberVO vo = new MemberVO();
			vo.setUserid(paramid.trim());
			logger.info("vo : "+ vo);
			
			Integer checkPoint = service.checkId(vo);
			
			logger.info("checkPoint : "+ checkPoint);
			
			out.print(checkPoint);
			
			out.flush();
			out.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			out.println("1");
		}
		
		
	}
	
	
}
