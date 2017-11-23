/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Discuss;

/**
 * @author cmy
 *锟斤拷锟斤拷4:25:57
 */
public interface DiscussDao {

	/*
	 * 锟斤拷询锟斤拷锟斤拷
	 */
	public Discuss selectDiscuss(int discussId);
	public List<Discuss> selectListDiscuss();
	/*
	 * 锟斤拷锟斤拷锟斤拷锟�
	 */
	public int insertReply(int discussId,String reply);
	public int insertDiscuss(Discuss discuss);
	/*
	 * 删锟斤拷锟斤拷锟斤拷
	 */
	public int deleteDiscuss(int discussId);
	public List<Discuss> selectReplied();
	public List<Discuss> selectUnReply();
	public boolean updateReplyContent(Discuss dicuss);
	public Discuss selectunRepliedById(int dicussId);
	
	/*
	 * WebApp
	 */
	public List<Discuss> selectListDiscuss_app();
	
	
}
