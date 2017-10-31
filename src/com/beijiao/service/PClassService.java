package com.beijiao.service;

import java.util.List;

import com.beijiao.model.PClass;

public interface PClassService {

	public List<PClass> selectPClassName();
	public String getPClassName(int pClassId);
}
