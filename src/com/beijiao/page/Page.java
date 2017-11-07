/**
 * 
 */
package com.beijiao.page;

/**
 * @author cmy lh
 *
 */
public class Page {

	//当前页数  
	private int pageNow=1;
	//每页显示的记录的条数
	private int pageSize=10;
	//总的记录数
	private int totalCount;
	//总页数
	private int pageTotalCount;
	//开始位置
	private int startPos;
	//是否有首页
	private boolean hasFirst;
	//是否有上一页
	private boolean hasPrevious;
	//是否有下一页
	private boolean hasNext;
	//是否有一尾页
	private boolean hasLast;
	
	/*
	 * 通过构造函数传入总记录数和当前页
	 */
	
	public Page(int pageNow, int totalCount) {
		this.pageNow = pageNow;
		this.totalCount = totalCount;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	/*
	 * 得到总的页数
	 */	
	public int getPageTotalCount() {
		pageTotalCount=getTotalCount()/getPageSize();
		return (getTotalCount()%getPageSize()==0)?pageTotalCount:pageTotalCount+1;
	}
	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}
	/*
	 * 得到初始位置
	 */
	public int getStartPos() {
		return (pageNow-1)*pageSize;
	}
	public void setStartPos(int startPos) {
		this.startPos = startPos;
	}
	/*
	 * 检查是否为第一页.若等于1，则首页即尾页，不存在首页
	 */
	public boolean isHasFirst() {
		return (pageNow==1)?false:true;
	}
	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}
	/*
	 * 检查是否有首页，有则代表有前一页
	 */
	public boolean isHasPrevious() {
		return (isHasFirst())?true:false;
	}
	public void setHasPrevious(boolean hasPrevious) {
		this.hasPrevious = hasPrevious;
	}
	/*
	 * 检查是否有尾页，有则代表有下一页
	 */
	public boolean isHasNext() {
		return (isHasLast())? true:false;
	}
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	public boolean isHasLast() {
		return hasLast;
	}
	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}
	
	
	
	
}
