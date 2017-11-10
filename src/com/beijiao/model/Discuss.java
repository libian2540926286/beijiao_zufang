/**
 * 
 */
package com.beijiao.model;

import java.util.Date;

/**
 * @author cmy
 *����4:04:29
 */
public class Discuss {

	private int discussId;
	private int userId;
	private String disTitle;
	private String disContent;
	private String reply;
	private String disTime;
	private String phonenum;
	private String email;
	 
	 
	/**
	 * @return the discussId
	 */
	public int getDiscussId() {
		return discussId;
	}
	/**
	 * @param discussId the discussId to set
	 */
	public void setDiscussId(int discussId) {
		this.discussId = discussId;
	}
	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/**
	 * @return the disContent
	 */
	public String getDisContent() {
		return disContent;
	}
	/**
	 * @param disContent the disContent to set
	 */
	public void setDisContent(String disContent) {
		this.disContent = disContent;
	}
	/**
	 * @return the disTime
	 */
	public String getDisTime() {
		return disTime;
	}
	/**
	 * @param disTime the disTime to set
	 */
	public void setDisTime(String disTime) {
		this.disTime = disTime;
	}
	public String getDisTitle() {
		return disTitle;
	}
	public void setDisTitle(String disTitle) {
		this.disTitle = disTitle;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}

	
}
