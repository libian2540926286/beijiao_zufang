/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.ReplyDao;
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
	public Reply selectReply(int replyId) {
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

}
