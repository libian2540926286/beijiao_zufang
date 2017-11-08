package com.beijiao.service;

import java.util.List;


import java.util.Map;

import com.beijiao.model.File;

public interface FileService {
	public List<File> getAllFile(Map map);
	public int upFile(File file);
	public List<File> getLimitFile();
	public int getRecordCount();
}
