package com.beijiao.service;

import java.util.List;


import com.beijiao.model.File;

public interface FileService {
	public List<File> getAllFile();
	public int upFile(File file);
}
