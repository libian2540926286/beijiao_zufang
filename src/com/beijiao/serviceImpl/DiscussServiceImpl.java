/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.DiscussDao;
import com.beijiao.model.Discuss;
import com.beijiao.service.DiscussService;

/**
 * @author cmy
 *ÏÂÎç4:33:31
 */
@Service("discussService")
public class DiscussServiceImpl implements DiscussService {

	
	@Resource
	private DiscussDao discussDao;
	/* (non-Javadoc)
	 * @see com.beijiao.service.DiscussService#selectDiscuss(int)
	 */
	@Override
	public Discuss selectDiscuss(int discussId) {
		// TODO Auto-generated method stub
		return discussDao.selectDiscuss(discussId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.DiscussService#selectListDiscuss()
	 */
	@Override
	public List<Discuss> selectListDiscuss() {
		// TODO Auto-generated method stub
		return discussDao.selectListDiscuss();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.DiscussService#insertDiscuss(com.beijiao.model.Discuss)
	 */
	@Override
	public int insertDiscuss(Discuss discuss) {
		// TODO Auto-generated method stub
		return discussDao.insertDiscuss(discuss);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.DiscussService#deleteDiscuss(int)
	 */
	@Override
	public int deleteDiscuss(int discussId) {
		// TODO Auto-generated method stub
		return discussDao.deleteDiscuss(discussId);
	}

}
