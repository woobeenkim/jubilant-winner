package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MainService;
import com.javaex.vo.ShopVo;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@Autowired
	private MainService mainservice;
	@RequestMapping("/")
	public String main() {
		
		
		return "main/main";
	}
	
	@RequestMapping("/listsearch")
	public String listsearch(Model model) {
		List<ShopVo> sList = mainservice.list();
		model.addAttribute("sList", sList);
		return "main/listsearch";
	}
	
	@RequestMapping("/mapsearch")
	public String mapsearch() {
		return "main/mapsearch";
	}
	
	@ResponseBody
	@RequestMapping(value = "/findshop", method = { RequestMethod.GET, RequestMethod.POST })
	public ShopVo findshop(@ModelAttribute ShopVo shopvo) {
		System.out.println("maincontroller:findshop");
		System.out.print(shopvo.getShopAddress());
		String shopaddress = shopvo.getShopAddress();
		shopvo = mainservice.findshop(shopaddress);
		return shopvo;
	}
}
