package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.PClass;

public interface PClassDao {

	public List<PClass> selectPClassName();
	public String getPClassName(int pClassId);
}
