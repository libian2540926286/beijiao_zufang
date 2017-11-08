package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import com.beijiao.model.File;
import com.beijiao.model.Policy;


public interface FileDao {
	public List<File> getAllFile(Map map);
	public int upFile(File file);
	public List<File> getLimitFile();
	public int getRecordCount();
}
