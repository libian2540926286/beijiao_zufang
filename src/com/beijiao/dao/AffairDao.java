package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.AffairWork;

public interface AffairDao {

	public List<AffairWork> selectAllWork();
	public AffairWork selectWork(int affWorkId);
	public int insertWork(AffairWork Work);
	public int updateWork(AffairWork Work);
	public int deleteWork(int affWorkId);
	
}
