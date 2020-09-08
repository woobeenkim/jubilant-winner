package com.javaex.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.DogService;
import com.javaex.vo.DogVo;
import com.javaex.vo.SessionVo;

@Controller
@RequestMapping("/pet")
public class DogController {

	@Autowired
	private DogService DogService;

//-----------------------------------------------------------------------	마이펫
	//	기본화면
	@RequestMapping("/petBasic")
	public String petBasic(Model model, HttpSession session) {
		
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		int userNo = sessionVo.getUserNo();
		System.out.println("userNo :: " + userNo);
		
		List<DogVo> pList = DogService.getList(userNo);
		model.addAttribute("pList", pList);
		System.out.println("리스트 출력 :: " + pList.toString());
		return "pet/petBasic";
	}

//-----------------------------------------------------------------------	마이펫 추가
	//	마이펫 추가폼
	@RequestMapping("/petAdd")
	public String petAdd() {
		return "pet/petAdd";
	}

	//	추가
	@RequestMapping("/add")
	public String add(@ModelAttribute DogVo DogVo , MultipartFile file, HttpSession session ,Model model) {
		
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		
		int userNo = sessionVo.getUserNo();
		int result = 0;
		
		result = DogService.add(DogVo,file,userNo);
		model.addAttribute("result", result);
		return "redirect:/pet/petBasic";
	}	
	
//-----------------------------------------------------------------------	마이펫 수정

	@RequestMapping("/petModify")
	public String petInfoModify(String userNo, Model model) {
		System.out.println("수정찍히니ㅣㅣㅣㅣㅣ");
		System.out.println(userNo);
		
		DogVo DogVo = DogService.petBasicMain("userNo");
		model.addAttribute("DogVo", DogVo);
		System.out.println("controller :: " + DogVo.toString());
		return userNo;
	}
	
}
