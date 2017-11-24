/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.ReplyDao;
import com.beijiao.model.Discuss;
import com.beijiao.model.Reply;
import com.beijiao.service.ReplyService;

/**
 * @author cmy
 *ÏÂÎç4:34:26
 */
@Service("replyService")
public class ReplyServiceImpl implements ReplyService {

	@Resource
	private ReplyDao replyDao;
	/* (non-Javadoc)
	 * @see com.beijiao.service.ReplyService#selectReply(int)
	 */
	@Override
	public Reply selectReply(Integer replyId) {
		// TODO Auto-generated method stub
		return replyDao.selectReply(replyId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.ReplyService#selectListReply()
	 */
	@Override
	public List<Reply> selectListReply() {
		// TODO Auto-generated method stub
		return replyDao.selectListReply();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.ReplyService#insertDiscuss(com.beijiao.model.Reply)
	 */
	@Override
	public int insertDiscuss(Reply reply) {
		// TODO Auto-generated method stub
		return replyDao.insertDiscuss(reply);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.ReplyService#deleteReply(int)
	 */
	@Override
	public int deleteReply(int replyId) {
		// TODO Auto-generated method stub
		return replyDao.deleteReply(replyId);
	}

	@Override
	public List<Discuss> selectReplied() {
		// TODO Auto-generated method stub
		return replyDao.selectReplied();
	}

	@Override
	public List<Discuss> selectUnReply() {
		// TODO Auto-generated method stub
		return replyDao.selectUnReply();
	}

	@Override
	public boolean updateReplyContent(Discuss dicuss) {
		// TODO Auto-generated method stub
		return replyDao.updateReplyContent(dicuss);
	}

	@Override
	public List<Discuss> selectunRepliedById(int dicussId) {
		// TODO Auto-generated method stub
		return replyDao.selectunRepliedById(dicussId);
	}


}
