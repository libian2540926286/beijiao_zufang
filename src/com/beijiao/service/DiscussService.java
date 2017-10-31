/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Discuss;

/**
 * @author cmy
 *下午4:31:46
 */
public interface DiscussService {

	/*
	 * 查询讨论
	 */
	public Discuss selectDiscuss(int discussId);
	public List<Discuss> selectListDiscuss();
	/*
	 * 添加讨论
	 */
	public int insertDiscuss(Discuss discuss);
	/*
	 * 删除讨论
	 */
	public int deleteDiscuss(int discussId);
}
