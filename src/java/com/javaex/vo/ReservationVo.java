package com.javaex.vo;

public class ReservationVo {
	private int regno;
	private int dogno;
	private int shopno;
	private int userno;
	private String username;
	private String regdate;
	private String usercontact;
	private int reserved=1;
	
	public ReservationVo(int dogno, int shopno, int userno) {
		dogno =this.dogno;
		shopno=this.shopno;
		userno = this.userno;
	}
	public ReservationVo() {}
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	public int getDogno() {
		return dogno;
	}
	public void setDogno(int dogno) {
		this.dogno = dogno;
	}
	public int getShopno() {
		return shopno;
	}
	public void setShopno(int shopno) {
		this.shopno = shopno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUsercontact() {
		return usercontact;
	}
	public void setUsercontact(String usercontact) {
		this.usercontact = usercontact;
	}
	public int getReserved() {
		return reserved;
	}
	public void setReserved(int reserved) {
		this.reserved = reserved;
	}
	@Override
	public String toString() {
		return "ReservationVo [regno=" + regno + ", dogno=" + dogno + ", shopno=" + shopno + ", userno=" + userno
				+ ", username=" + username + ", regdate=" + regdate + ", usercontact=" + usercontact + ", reserved="
				+ reserved + "]";
	}
	



}
