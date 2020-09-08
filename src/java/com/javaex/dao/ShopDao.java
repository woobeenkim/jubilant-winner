package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ShopVo;

@Repository
public class ShopDao {

	@Autowired
	private SqlSession sqlsession;
	
	public ShopVo select(String shopDomain) {
		System.out.println("shopdao:shop");
		return sqlsession.selectOne("shop.shop",shopDomain);
	}
}
