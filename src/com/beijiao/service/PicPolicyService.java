package com.beijiao.service;

import java.util.List;

import com.beijiao.model.PicPolicy;

public interface PicPolicyService {

	public List<PicPolicy> getFive();
	public List<PicPolicy> getAll();
	public PicPolicy getPicPolicy(int picPolId);
	public int insertPicPolicy(PicPolicy picPolicy);
	public int deletePicPolicy(int picPolId);
}
