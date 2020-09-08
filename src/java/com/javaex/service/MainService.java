package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainDao;
import com.javaex.vo.ShopVo;

@Service
public class MainService {
	
	@Autowired
	private MainDao maindao;
	
	public List<ShopVo> list(){
		
		return maindao.list();
	}
	
	public ShopVo findshop(String shopaddress) {
		System.out.println("mainservice:findshop");
		System.out.println(shopaddress);
		return maindao.findshop(shopaddress);
	}
}
