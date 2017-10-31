/**
 * 
 */
package com.beijiao.model;

import java.sql.Date;


/**
 * @author cmy
 *����11:00:37
 */
public class News {

	private int newsId;
	private String newsTitle;
	private String newsAuthor;
	private String newsContent;
	private String newsSource;
	private String newsLink;
	private Date newsTime;
	/**
	 * @return the newsId
	 */
	public int getNewsId() {
		return newsId;
	}
	/**
	 * @param newsId the newsId to set
	 */
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	/**
	 * @return the newsTitle
	 */
	public String getNewsTitle() {
		return newsTitle;
	}
	/**
	 * @param newsTitle the newsTitle to set
	 */
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	/**
	 * @return the newsAuthor
	 */
	public String getNewsAuthor() {
		return newsAuthor;
	}
	/**
	 * @param newsAuthor the newsAuthor to set
	 */
	public void setNewsAuthor(String newsAuthor) {
		this.newsAuthor = newsAuthor;
	}
	/**
	 * @return the newsContent
	 */
	public String getNewsContent() {
		return newsContent;
	}
	/**
	 * @param newsContent the newsContent to set
	 */
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	/**
	 * @return the newsSource
	 */
	public String getNewsSource() {
		return newsSource;
	}
	/**
	 * @param newsSource the newsSource to set
	 */
	public void setNewsSource(String newsSource) {
		this.newsSource = newsSource;
	}
	/**
	 * @return the newsLink
	 */
	public String getNewsLink() {
		return newsLink;
	}
	/**
	 * @param newsLink the newsLink to set
	 */
	public void setNewsLink(String newsLink) {
		this.newsLink = newsLink;
	}
	/**
	 * @return the newsTime
	 */
	public Date getNewsTime() {
		return newsTime;
	}
	/**
	 * @param newsTime the newsTime to set
	 */
	public void setNewsTime(Date newsTime) {
		this.newsTime = newsTime;
	}
	
	
	
}
