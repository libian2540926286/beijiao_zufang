package com.beijiao.dao;

import java.util.List;
import com.beijiao.model.File;


public interface FileDao {
	public List<File> getAllFile();
	public int upFile(File file);
}
