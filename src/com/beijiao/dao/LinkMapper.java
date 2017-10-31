/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Link;

/**
 * @author cmy
 *上午11:11:38
 */
public interface LinkMapper {

	
	/*
	 * 查询链接
	 */
	public Link selectLink(int linkId);
	public List<Link> selectLIstLink();
	/*
	 * 添加项目申报链接
	 */
	public int addLink(Link link);
	/*
	 * 删除链接
	 */
	public int deleteLink(int linkId);
	/*
	 * 修改链接
	 */
	public int changeLink(Link link);
	public int changeLinkName(String linkName);
	public int changeLinkAddress(String linkAddress);
}
