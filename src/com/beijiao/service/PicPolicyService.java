package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.PicPolicy;

public interface PicPolicyService {

	public List<PicPolicy> getFive();
	public List<PicPolicy> getAll(Map map);
	public int getRecordCount();
	public PicPolicy getPicPolicy(int picPolId);
	public int insertPicPolicy(PicPolicy picPolicy);
	public int deletePicPolicy(int picPolId);
}
