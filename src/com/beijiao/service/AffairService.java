package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.AffairWork;

public interface AffairService {

	public List<AffairWork> selectAllWork(int affairId);
	public AffairWork selectWork(int affWorkId);
	public int insertWork(AffairWork Work);
	public int updateWork(AffairWork Work);
	public int deleteWork(int affWorkId);
	public List<AffairWork>  selectAll(Map map);
	public int getRecordCount();
}
