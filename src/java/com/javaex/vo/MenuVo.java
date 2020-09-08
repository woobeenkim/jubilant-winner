package com.javaex.vo;

public class MenuVo {

	//필드
	private int menuNo,shopNo,dispaly;
	private String menuMemo,menuTitle;

	//생성자
	public MenuVo() {
		
	}
	public MenuVo(int menuNo, int shopNo, int dispaly, String menuMemo, String menuTitle) {
		this.menuNo = menuNo;
		this.shopNo = shopNo;
		this.dispaly = dispaly;
		this.menuMemo = menuMemo;
		this.menuTitle = menuTitle;
	}
	
	//g.s
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public int getShopNo() {
		return shopNo;
	}
	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}
	public int getDispaly() {
		return dispaly;
	}
	public void setDispaly(int dispaly) {
		this.dispaly = dispaly;
	}
	public String getMenuMemo() {
		return menuMemo;
	}
	public void setMenuMemo(String menuMemo) {
		this.menuMemo = menuMemo;
	}
	public String getMenuTitle() {
		return menuTitle;
	}
	public void setMenuTitle(String menuTitle) {
		this.menuTitle = menuTitle;
	}
	//일반 메소드
	@Override
	public String toString() {
		return "MenuVo [menuNo=" + menuNo + ", shopNo=" + shopNo + ", dispaly=" + dispaly + ", menuMemo=" + menuMemo
				+ ", menuTitle=" + menuTitle + "]";
	}
	
}
