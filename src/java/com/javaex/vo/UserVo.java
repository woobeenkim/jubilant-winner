package com.javaex.vo;

public class UserVo {
	
	//필드
	private int userNo;
	private String id,userName,password,phoneNo,joinDate;
	
	//생성자
	public UserVo() {
	}
	public UserVo(int userNo, String id, String userName, String password, String phoneNo, String joinDate) {
		this.userNo = userNo;
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.phoneNo = phoneNo;
		this.joinDate = joinDate;
	}
	
	//g.s
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	//일반 메소드
	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", id=" + id + ", userName=" + userName + ", password=" + password
				+ ", phoneNo=" + phoneNo + ", joinDate=" + joinDate + "]";
	}
	
}
