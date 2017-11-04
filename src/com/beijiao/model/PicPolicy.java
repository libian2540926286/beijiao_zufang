package com.beijiao.model;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PicPolicy {

	private int picPolId;
	private String picPolTitle;
	private String picPolContent;
	private String picPolSource;
	@DateTimeFormat(pattern = "yyyy-MM-dd")  
	private Date picPolTime;
	private String picPolFile;
	public int getPicPolId() {
		return picPolId;
	}
	public void setPicPolId(int picPolId) {
		this.picPolId = picPolId;
	}
	public String getPicPolTitle() {
		return picPolTitle;
	}
	public void setPicPolTitle(String picPolTitle) {
		this.picPolTitle = picPolTitle;
	}
	public String getPicPolContent() {
		return picPolContent;
	}
	public void setPicPolContent(String picPolContent) {
		this.picPolContent = picPolContent;
	}
	public String getPicPolSource() {
		return picPolSource;
	}
	public void setPicPolSource(String picPolSource) {
		this.picPolSource = picPolSource;
	}
	public Date getPicPolTime() {
		return picPolTime;
	}
	public void setPicPolTime(Date picPolTime) {
		this.picPolTime = picPolTime;
	}
	public String getPicPolFile() {
		return picPolFile;
	}
	public void setPicPolFile(String picPolFile) {
		this.picPolFile = picPolFile;
	}
	
	
}
