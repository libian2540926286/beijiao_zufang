/**
 * 
 */
package com.beijiao.model;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;



/**
 * @author cmy
 *����10:58:46
 */
public class PolInterpre {

	private int polInterpreId;
	private String polInterpreTitle;
	private String polInterpreAuthor;
	private String polInterpreContent;
	private String polInterpreSource;
	@DateTimeFormat(pattern = "yyyy-MM-dd")  
	private Date polInterpreTime;
	/**
	 * @return the polInterpreId
	 */
	public int getPolInterpreId() {
		return polInterpreId;
	}
	/**
	 * @param polInterpreId the polInterpreId to set
	 */
	public void setPolInterpreId(int polInterpreId) {
		this.polInterpreId = polInterpreId;
	}
	/**
	 * @return the polInterpreTitle
	 */
	public String getPolInterpreTitle() {
		return polInterpreTitle;
	}
	/**
	 * @param polInterpreTitle the polInterpreTitle to set
	 */
	public void setPolInterpreTitle(String polInterpreTitle) {
		this.polInterpreTitle = polInterpreTitle;
	}
	/**
	 * @return the polInterpreAuthor
	 */
	public String getPolInterpreAuthor() {
		return polInterpreAuthor;
	}
	/**
	 * @param polInterpreAuthor the polInterpreAuthor to set
	 */
	public void setPolInterpreAuthor(String polInterpreAuthor) {
		this.polInterpreAuthor = polInterpreAuthor;
	}
	/**
	 * @return the polInterpreContent
	 */
	public String getPolInterpreContent() {
		return polInterpreContent;
	}
	/**
	 * @param polInterpreContent the polInterpreContent to set
	 */
	public void setPolInterpreContent(String polInterpreContent) {
		this.polInterpreContent = polInterpreContent;
	}
	/**
	 * @return the polInterpreSource
	 */
	public String getPolInterpreSource() {
		return polInterpreSource;
	}
	/**
	 * @param polInterpreSource the polInterpreSource to set
	 */
	public void setPolInterpreSource(String polInterpreSource) {
		this.polInterpreSource = polInterpreSource;
	}
	/**
	 * @return the polInterpreTime
	 */
	public Date getPolInterpreTime() {
		return polInterpreTime;
	}
	/**
	 * @param polInterpreTime the polInterpreTime to set
	 */
	public void setPolInterpreTime(Date polInterpreTime) {
		this.polInterpreTime = polInterpreTime;
	}
	
	
	
}
