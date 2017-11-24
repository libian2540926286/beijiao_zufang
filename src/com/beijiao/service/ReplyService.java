/**
 * 
 */
package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Discuss;
import com.beijiao.model.Reply;

/**
 * @author cmy
 *下午4:32:02
 */
public interface ReplyService {

	/*
	 * 查询回复
	 */
	public Reply selectReply(Integer replyId);
	public List<Reply> selectListReply();
	/*
	 * 添加回复
	 */
	public int insertDiscuss(Reply reply);
	/*
	 * 删除回复
	 */
	public int deleteReply(int replyId);
	public List<Discuss> selectReplied();
	public List<Discuss> selectUnReply();
	public boolean updateReplyContent(Discuss dicuss);
	public List<Discuss> selectunRepliedById(int dicussId);
}

