package com.kboard.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kboard.domain.MemberVO;
import com.kboard.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;

	// Register get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

	// Register post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		service.register(vo);
		return "redirect:/";
	}
	//login get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void getLogin() throws Exception{
		logger.info("get login");
	}
	// login post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");

		HttpSession session = req.getSession();

		MemberVO login = service.login(vo);


		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);

		} else {
			session.setAttribute("member", login);
		}

		return "redirect:/";

	}
	//logout get
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		logger.info("get logout");
		session.invalidate();
		
		return "redirect:/";
	}

	// modify get
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify() throws Exception {
		logger.info("get modify");
	}

	// modify post
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String PostModify(HttpSession session, MemberVO vo) throws Exception {
		logger.info("post modify");
		
		service.modify(vo);

		session.invalidate();

		return "redirect:/";
	}

	// withdrawal get
	@RequestMapping(value = "/withdrawal", method = RequestMethod.GET)
	public void getWithdrawal() throws Exception {
	 logger.info("get withdrawal");
	 
	}
	//withdrawal post
	@RequestMapping(value = "/withdrawal", method = RequestMethod.POST)
	public String postWithdrawal(HttpSession session, MemberVO vo, RedirectAttributes rttr,HttpServletRequest req) throws Exception {
	 logger.info("post withdrawal");
	 
	 MemberVO member = (MemberVO)session.getAttribute("member");
	 MemberVO member2 = (MemberVO)req.getSession().getAttribute("member");
	 
	 String oldPass = member.getUserpw();
	 String newPass = vo.getUserpw();
	     
	 if(!(oldPass.equals(newPass))) {
	  rttr.addFlashAttribute("msg", false);
	  return "redirect:/member/withdrawal";
	 }
	 
	 service.withdrawal(vo);
	 
	 session.invalidate();
	  
	 return "redirect:/";
	}
	
	//idCheck
	@ResponseBody
	@RequestMapping(value="/idCheck",method=RequestMethod.POST)
	public int postIdCheck(HttpServletRequest req)throws Exception{
		logger.info("post idCheck");
		
		String userid= req.getParameter("userid");
		MemberVO idCheck = service.idCheck(userid);
		
		int result=0;
		
		if(idCheck != null) {
			result =1;
		}
		return result;
		
	}
}
