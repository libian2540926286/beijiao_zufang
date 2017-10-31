package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.PClassDao;
import com.beijiao.model.PClass;
import com.beijiao.service.PClassService;

@Service("pClassServiceImpl")
public class PClassServiceImpl implements PClassService {

	@Resource
	private PClassDao pClassDao;
	@Override
	public List<PClass> selectPClassName() {
		// TODO Auto-generated method stub
		return pClassDao.selectPClassName();
	}
	@Override
	public String getPClassName(int pClassId) {
		// TODO Auto-generated method stub
		return pClassDao.getPClassName(pClassId);
	}

}
