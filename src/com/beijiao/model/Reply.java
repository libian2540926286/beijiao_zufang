/**
 * 
 */
package com.beijiao.model;

import java.util.Date;

/**
 * @author cmy
 *����4:04:39
 */
public class Reply {

	private int replyId;
	private int discussId;
	private int userId;
	private String replyContent;
	private String replyTime;
	private Discuss discuss;
	
	/**
	 * @return the discuss
	 */
	public Discuss getDiscuss() {
		return discuss;
	}
	/**
	 * @param discuss the discuss to set
	 */
	public void setDiscuss(Discuss discuss) {
		this.discuss = discuss;
	}
	/**
	 * @return the replyId
	 */
	public int getReplyId() {
		return replyId;
	}
	/**
	 * @param replyId the replyId to set
	 */
	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}
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
	 * @return the replyContent
	 */
	public String getReplyContent() {
		return replyContent;
	}
	/**
	 * @param replyContent the replyContent to set
	 */
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	/**
	 * @return the replyTime
	 */
	public String getReplyTime() {
		return replyTime;
	}
	/**
	 * @param replyTime the replyTime to set
	 */
	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}
	
}
