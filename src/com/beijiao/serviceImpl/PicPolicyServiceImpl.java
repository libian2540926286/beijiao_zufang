package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.PicPolicyDao;
import com.beijiao.model.PicPolicy;
import com.beijiao.service.PicPolicyService;

@Service("picPolicyService")
public class PicPolicyServiceImpl implements PicPolicyService {

	@Resource
	private PicPolicyDao picPolicyDao;
	
	@Override
	public List<PicPolicy> getFive() {
		// TODO Auto-generated method stub
		return picPolicyDao.getFive();
	}

	@Override
	public PicPolicy getPicPolicy(int picPolId) {
		// TODO Auto-generated method stub
		return picPolicyDao.getPicPolicy(picPolId);
	}

	@Override
	public int insertPicPolicy(PicPolicy picPolicy) {
		// TODO Auto-generated method stub
		return picPolicyDao.insertPicPolicy(picPolicy);
	}

	@Override
	public int deletePicPolicy(int picPolId) {
		// TODO Auto-generated method stub
		return picPolicyDao.deletePicPolicy(picPolId);
	}

	@Override
	public List<PicPolicy> getAll(Map map) {
		// TODO Auto-generated method stub
		return picPolicyDao.getAll(map);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return picPolicyDao.getRecordCount();
	}

	@Override
	public List<PicPolicy> getpicPolIndex_app() {
		// TODO Auto-generated method stub
		return picPolicyDao.getpicPolIndex_app();
	}

}
