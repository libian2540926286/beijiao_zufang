/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Discuss;

/**
 * @author cmy
 *锟斤拷锟斤拷4:31:46
 */
public interface DiscussService {

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
