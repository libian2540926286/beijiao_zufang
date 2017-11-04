package com.beijiao.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.FileDao;
import com.beijiao.service.FileService;

@Service("fileService")
public class FileServiceImpl implements FileService {

	@Resource
	private FileDao fileDao;
}
