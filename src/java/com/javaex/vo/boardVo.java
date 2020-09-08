package com.javaex.vo;

public class boardVo {
	//필드
	private int boardNo,menuNo,regdate,hit;
	private String title,content,img;
	
	//생성자
	public boardVo() {
		
	}

	public boardVo(int boardNo, int menuNo, int regdate, int hit, String title, String content, String img) {
		this.boardNo = boardNo;
		this.menuNo = menuNo;
		this.regdate = regdate;
		this.hit = hit;
		this.title = title;
		this.content = content;
		this.img = img;
	}
	//g.s
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public int getRegdate() {
		return regdate;
	}
	public void setRegdate(int regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	//일반 메소드
	@Override
	public String toString() {
		return "boardVo [boardNo=" + boardNo + ", menuNo=" + menuNo + ", regdate=" + regdate + ", hit=" + hit
				+ ", title=" + title + ", content=" + content + ", img=" + img + "]";
	}
	
}
