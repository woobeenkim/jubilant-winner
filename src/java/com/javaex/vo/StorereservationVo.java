package com.javaex.vo;

public class StorereservationVo {
	private int shopno, display;
	private String regdate;
	public int getShopno() {
		return shopno;
	}
	public void setShopno(int shopno) {
		this.shopno = shopno;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public int getDisplay() {
		return display;
	}
	public void setDisplay(int display) {
		this.display = display;
	}
	@Override
	public String toString() {
		return "StorereservationVo [shopno=" + shopno + ", display=" + display + ", regdate=" + regdate + "]";
	}


	
}
