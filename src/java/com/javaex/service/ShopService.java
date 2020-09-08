package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ShopDao;
import com.javaex.vo.ShopVo;

@Service
public class ShopService {

	@Autowired
	private ShopDao shopdao;
	
	public ShopVo select(String shopDomain) {
		return shopdao.select(shopDomain);
	}
}
