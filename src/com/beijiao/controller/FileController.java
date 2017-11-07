package com.beijiao.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.File;
import com.beijiao.model.Policy;
import com.beijiao.service.FileService;

@Controller
@RequestMapping("/file")
public class FileController {
	@Resource
	private FileService fileService;
	
	@RequestMapping("allFile")
	public String getAllFile(Model model){
		List<File> files=fileService.getAllFile();
		model.addAttribute("files", files);
		return "admin/file";
	}
	@RequestMapping("upfile")
public String upFile(File files,MultipartFile file,HttpServletRequest request){
		
		files.setFiletime(String.valueOf(files.getFiletime()));
		UpAndDownload upFile=new UpAndDownload();
		String filepath=upFile.doUploadFile(file, request);
		String filename=file.getOriginalFilename();
		files.setFilename(filename);
		files.setFilepath(filepath);
		int n=fileService.upFile(files);				
		if(n!=0){
		   return "admin/file";
		}else{
		   return "admin/file";
		}
	}
}
