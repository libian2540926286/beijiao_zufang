/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Discuss;
import com.beijiao.model.Reply;

/**
 * @author cmy
 *下午4:26:12
 */
public interface ReplyDao {

	/*
	 * 查询回复
	 */
	public Reply selectReply(int replyId);
	public List<Reply> selectListReply();
	/*
	 * 添加回复
	 */
	public int insertDiscuss(Reply reply);
	/*
	 * 删除回复
	 */
	public int deleteReply(int replyId);
}
