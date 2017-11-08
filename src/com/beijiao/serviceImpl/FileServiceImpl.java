package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.FileDao;
import com.beijiao.model.File;
import com.beijiao.service.FileService;

@Service("fileService")
public class FileServiceImpl implements FileService {

	@Resource
	private FileDao fileDao;

	@Override
	public int upFile(File file) {
		// TODO Auto-generated method stub
		return fileDao.upFile(file);
	}

	@Override
	public List<File> getLimitFile() {
		// TODO Auto-generated method stub
		return fileDao.getLimitFile();
	}

	@Override
	public List<File> getAllFile(Map map) {
		// TODO Auto-generated method stub
		return fileDao.getAllFile(map);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return fileDao.getRecordCount();
	}
}
