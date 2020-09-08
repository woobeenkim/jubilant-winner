package com.javaex.vo;

public class ShopVo {

	//필드
	private int shopNo , userNo;
	private String shopDomain,shopNumber,shopAddress,shopTitle;
	private String shopAuth,shopHeader,shopEmail,shopLogo,shopDesc;

	//생성자
	public ShopVo() {
	}

	public ShopVo(int shopNo, int userNo, String shopDomain, String shopNumber, String shopAddress, String shopTitle,
			String shopAuth, String shopHeader, String shopEmail, String shopLogo,String shopDesc) {
		this.shopNo = shopNo;
		this.userNo = userNo;
		this.shopDomain = shopDomain;
		this.shopNumber = shopNumber;
		this.shopAddress = shopAddress;
		this.shopTitle = shopTitle;
		this.shopAuth = shopAuth;
		this.shopHeader = shopHeader;
		this.shopEmail = shopEmail;
		this.shopLogo = shopLogo;
		this.shopDesc = shopDesc;
	}

	//g.s
	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getShopDomain() {
		return shopDomain;
	}

	public void setShopDomain(String shopDomain) {
		this.shopDomain = shopDomain;
	}

	public String getShopNumber() {
		return shopNumber;
	}

	public void setShopNumber(String shopNumber) {
		this.shopNumber = shopNumber;
	}

	public String getShopAddress() {
		return shopAddress;
	}

	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}

	public String getShopTitle() {
		return shopTitle;
	}

	public void setShopTitle(String shopTitle) {
		this.shopTitle = shopTitle;
	}

	public String getShopAuth() {
		return shopAuth;
	}

	public void setShopAuth(String shopAuth) {
		this.shopAuth = shopAuth;
	}

	public String getShopHeader() {
		return shopHeader;
	}

	public void setShopHeader(String shopHeader) {
		this.shopHeader = shopHeader;
	}

	public String getShopEmail() {
		return shopEmail;
	}

	public void setShopEmail(String shopEmail) {
		this.shopEmail = shopEmail;
	}

	public String getShopLogo() {
		return shopLogo;
	}

	public void setShopLogo(String shopLogo) {
		this.shopLogo = shopLogo;
	}
	
	public String getShopDesc() {
		return shopDesc;
	}

	public void setShopDesc(String shopDesc) {
		this.shopDesc = shopDesc;
	}

	//일반메소드
	@Override
	public String toString() {
		return "ShopVo [shopNo=" + shopNo + ", userNo=" + userNo + ", shopDomain=" + shopDomain + ", shopNumber="
				+ shopNumber + ", shopAddress=" + shopAddress + ", shopTitle=" + shopTitle + ", shopAuth=" + shopAuth
				+ ", shopHeader=" + shopHeader + ", shopEmail=" + shopEmail + ", shopLogo=" + shopLogo + ", shopDesc="
				+ shopDesc + "]";
	}
	
	
}
