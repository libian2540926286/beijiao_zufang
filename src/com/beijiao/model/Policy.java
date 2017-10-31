 /**
 * 
 */
package com.beijiao.model;



import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author cmy lh
 *����10:57:41
 */
public class Policy {

	private int policyId;
	private int pClassId;
	private String polTitle;
	private String polContent;
	private String polSource;
	@DateTimeFormat(pattern = "yyyy-MM-dd")  
	private Date polTime;
	private String polFile;
	private String polDrade;
	private String polArea;
	
	/**
	 * @return the policyId
	 */
	public int getPolicyId() {
		return policyId;
	}
	/**
	 * @param policyId the policyId to set
	 */
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	/**
	 * @return the polTitle
	 */
	public String getPolTitle() {
		return polTitle;
	}
	/**
	 * @param polTitle the polTitle to set
	 */
	public void setPolTitle(String polTitle) {
		this.polTitle = polTitle;
	}
	/**
	 * @return the polContent
	 */
	public String getPolContent() {
		return polContent;
	}
	/**
	 * @param polContent the polContent to set
	 */
	public void setPolContent(String polContent) {
		this.polContent = polContent;
	}
	/**
	 * @return the polSource
	 */
	public String getPolSource() {
		return polSource;
	}
	/**
	 * @param polSource the polSource to set
	 */
	public void setPolSource(String polSource) {
		this.polSource = polSource;
	}
	/**
	 * @return the polTime
	 */
	public Date getPolTime() {
		return polTime;
	}
	/**
	 * @param polTime the polTime to set
	 */
	public void setPolTime(Date polTime) {		
		this.polTime = polTime;
	}
	/**
	 * @return the polFile
	 */
	public String getPolFile() {
		return polFile;
	}
	/**
	 * @param polFile the polFile to set
	 */
	public void setPolFile(String polFile) {
		this.polFile = polFile;
	}
	/**
	 * @return the polDrade
	 */
	public String getPolDrade() {
		return polDrade;
	}
	/**
	 * @param polDrade the polDrade to set
	 */
	public void setPolDrade(String polDrade) {
		this.polDrade = polDrade;
	}
	/**
	 * @return the pClassId
	 */
	public int getpClassId() {
		return pClassId;
	}
	/**
	 * @param pClassId the pClassId to set
	 */
	public void setpClassId(int pClassId) {
		this.pClassId = pClassId;
	}
	public String getPolArea() {
		return polArea;
	}
	public void setPolArea(String polArea) {
		this.polArea = polArea;
	}


}
