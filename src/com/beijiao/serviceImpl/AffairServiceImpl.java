package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.AffairDao;
import com.beijiao.model.AffairWork;
import com.beijiao.service.AffairService;

@Service
public class AffairServiceImpl implements AffairService {

	@Resource
	private AffairDao affairDao;
	@Override
	public List<AffairWork> selectAllWork(int affairId) {
		// TODO Auto-generated method stub
		return affairDao.selectAllWork(affairId);
	}

	@Override
	public AffairWork selectWork(int affWorkId) {
		// TODO Auto-generated method stub
		return affairDao.selectWork(affWorkId);
	}

	@Override
	public int insertWork(AffairWork Work) {
		// TODO Auto-generated method stub
		return affairDao.insertWork(Work);
	}

	@Override
	public int updateWork(AffairWork Work) {
		// TODO Auto-generated method stub
		return affairDao.updateWork(Work);
	}

	@Override
	public int deleteWork(int affWorkId) {
		// TODO Auto-generated method stub
		return affairDao.deleteWork(affWorkId);
	}

}
