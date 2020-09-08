package com.javaex.vo;

public class AuthVo {
	
	private int userNo;
	private String userName;
	private int shopNo;
	private String shopDomain;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getShopDomain() {
		return shopDomain;
	}
	public void setShopDomain(String shopDomain) {
		this.shopDomain = shopDomain;
	}
	
	@Override
	public String toString() {
		return "AuthVo [userNo=" + userNo + ", userName=" + userName + ", shopNo=" + shopNo + ", shopDomain="
				+ shopDomain + "]";
	}
	
	
	
	
}
