package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.UserService;
import com.javaex.vo.SessionVo;
import com.javaex.vo.ShopVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	// 회원가입 화면
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}

	// 회원가입
	@RequestMapping("/join")
	public String join(@ModelAttribute UserVo userVo, Model model) {
		System.out.println(userVo);
		userService.join(userVo);
		model.addAttribute("userVo", userVo);
		
		return "user/joinOk";
	}

	// 로그인화면
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}

	// 로그인화면
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println(userVo);
		SessionVo authVo = userService.login(userVo);
		if (authVo != null) {
			session.setAttribute("session", authVo);
			return "redirect:/main/";
		} else {
			return "redirect:/user/loginForm?result=fail";
		}
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("session");
		session.invalidate();
		return "redirect:/main/";
	}

	// 매장등록폼
	@RequestMapping("/storeAddForm")
	public String storeAddForm() {
		return "user/storeAddForm";
	}

	// 매장등록
	@RequestMapping("/storeAdd")
	public String storeAdd(@ModelAttribute ShopVo shopVo , MultipartFile file,HttpSession session ,Model model) {
		//현재 세션값
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		//세션에 유저번호
		int userNo = sessionVo.getUserNo();
		
		SessionVo shopSession = userService.storeAdd(shopVo,file,userNo);
		//유저번호로 조회된 도메인,샵번호 sessionVo에 넣기
		sessionVo.setShopDomain(shopSession.getShopDomain());
		sessionVo.setShopNo(shopSession.getShopNo());
		//sessionVo 세션에 등록
		session.setAttribute("session", sessionVo);
		
		return "user/storeOk";
	}
	
}
