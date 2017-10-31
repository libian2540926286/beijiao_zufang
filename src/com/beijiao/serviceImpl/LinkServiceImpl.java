/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.LinkMapper;
import com.beijiao.model.Link;
import com.beijiao.service.LinkService;

/**
 * @author cmy
 *ÉÏÎç11:26:54
 */
@Service("linkService")
public class LinkServiceImpl implements LinkService {

	@Resource
	private LinkMapper linkMapper;
	/* (non-Javadoc)
	 * @see com.beijiao.service.LinkService#selectLink(int)
	 */
	@Override
	public Link selectLink(int linkId) {
		// TODO Auto-generated method stub
		return linkMapper.selectLink(linkId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.LinkService#selectLIstLink()
	 */
	@Override
	public List<Link> selectLIstLink() {
		// TODO Auto-generated method stub
		return linkMapper.selectLIstLink();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.LinkService#addLink()
	 */
	@Override
	public int addLink(Link link) {
		// TODO Auto-generated method stub
		return linkMapper.addLink(link);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.LinkService#deleteLink(int)
	 */
	@Override
	public int deleteLink(int linkId) {
		// TODO Auto-generated method stub
		return linkMapper.deleteLink(linkId);
	}


	/* (non-Javadoc)
	 * @see com.beijiao.service.LinkService#changeLink(com.beijiao.model.Link)
	 */
	@Override
	public int changeLink(Link link) {
		// TODO Auto-generated method stub
		return linkMapper.changeLink(link);
	}

	
}
