package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.StoreService;
import com.javaex.vo.DogVo;
import com.javaex.vo.ReservationVo;
import com.javaex.vo.SessionVo;
import com.javaex.vo.ShopVo;
import com.javaex.vo.StorereservationVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("store/{shopDomain}")
public class StoreController {
	@Autowired
	StoreService storeService;
	
	//매장 메인페이지
	@RequestMapping("/main")
	public String StoreMain(@PathVariable("shopDomain") String shopDomain , Model model) {
		ShopVo shopVo = storeService.StoreMain(shopDomain);
		model.addAttribute("shopVo", shopVo);
		
		return "store/storeMain";
	}
	
	//매장관리 페이지-예약관리
	@RequestMapping("/store-reservation")
	public String StoreReservation(@PathVariable("shopDomain") String shopDomain , Model model) {
		System.out.println(shopDomain);
		ShopVo shopVo = storeService.StoreMain(shopDomain);
		model.addAttribute("shopVo", shopVo);
		System.out.println(shopVo);
		List<ReservationVo> RList = storeService.getRList(shopVo.getShopNo());
		model.addAttribute("RList",RList);
		
		return "store/store-reservation";
	}
	
	@ResponseBody
	@RequestMapping(value = "/read", method = { RequestMethod.GET, RequestMethod.POST })
	public void read(@PathVariable("shopDomain") String shopDomain, @ModelAttribute StorereservationVo storereservationvo,
			   Model model) {
		ShopVo shopVo = storeService.StoreMain(shopDomain);
		model.addAttribute("shopVo", shopVo);
		System.out.println("storecontroller:adminreser");
		storereservationvo.setShopno(shopVo.getShopNo());
		System.out.println(storereservationvo.toString());
		
		storeService.adminreser(storereservationvo);
	
	}
	
	//매장관리 페이지-정보수정
	@RequestMapping("/store-infoModify")
	public String StoreInfoModify(@PathVariable("shopDomain") String shopDomain , Model model) {
		ShopVo shopVo = storeService.StoreMain(shopDomain);
		model.addAttribute("shopVo", shopVo);
		
		return "store/store-infoModify";
	}
	
	//매장관리 페이지-정보수정
	@RequestMapping("/infoModify")
	public String InfoModify(@ModelAttribute ShopVo shopVo,
						     @RequestParam("Logo") MultipartFile shopLogo,
			                 @RequestParam("Header")MultipartFile shopHeader) {
		
		storeService.InfoModify(shopVo,shopLogo,shopHeader);
		
		return "redirect:/store/"+shopVo.getShopDomain()+"/main";
	}
	@RequestMapping("/reservationform")
	public String reservationform(@PathVariable("shopDomain") String shopDomain, Model model, HttpSession session ) {
		ShopVo shopVo = storeService.StoreMain(shopDomain);
		model.addAttribute("shopVo", shopVo);
		UserVo uservo = new UserVo();
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		System.out.println(sessionVo.toString());
		uservo = storeService.getuser(sessionVo.getUserNo());
		model.addAttribute("uservo",uservo);
		System.out.println(uservo.toString());
		List<DogVo> dList = storeService.getdList(sessionVo.getUserNo());
	
		model.addAttribute("dList", dList);
		System.out.println("storecontroller:reservationform");
		
		return "store/reservation";
	}
	
	@ResponseBody
	@RequestMapping("/seldate")
	public List<StorereservationVo> seldate(@PathVariable("shopDomain") String shopDomain, @ModelAttribute StorereservationVo storereservationvo,
											Model model){
		ShopVo shopVo = storeService.StoreMain(shopDomain);
		storereservationvo.setShopno(shopVo.getShopNo());
		List<StorereservationVo> reserList = storeService.restime(storereservationvo);
		model.addAttribute("storereservationvo", storereservationvo);
		return reserList;
	}
	 

	@RequestMapping("/reservation")
	public String reservation(@PathVariable("shopDomain") String shopDomain,@ModelAttribute ReservationVo reservationvo,
							  Model model, HttpSession session) {
		
		  System.out.println("storecontroller:reservation");
		  ShopVo shopVo =storeService.StoreMain(shopDomain);
		  model.addAttribute("shopVo", shopVo);
		  SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		  reservationvo.setUserno(sessionVo.getUserNo());
		  reservationvo.setShopno(shopVo.getShopNo());
		  System.out.println(reservationvo.toString());
		  storeService.insertres(reservationvo);
		  model.addAttribute("reservationvo",reservationvo);
		 
	return "redirect:/store/${shopDomain}/reservationform";
		
	}
	@ResponseBody
	@RequestMapping("/getdog")
	public DogVo getdog(@ModelAttribute DogVo dogvo,HttpSession session) {
		SessionVo sessionVo = (SessionVo)session.getAttribute("session");
		System.out.println(sessionVo);
		dogvo.setUserNo(sessionVo.getUserNo());
		System.out.println("ht:"+dogvo.toString());
		
		dogvo = storeService.getdog(dogvo);
		System.out.println(dogvo.toString());
		return dogvo;
	}
	
	
	
}
