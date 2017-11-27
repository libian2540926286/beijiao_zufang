package com.beijiao.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.File;
import com.beijiao.model.Policy;
import com.beijiao.page.Page;
import com.beijiao.service.FileService;

@Controller
@RequestMapping("/file")
public class FileController {
	@Resource
	private FileService fileService;
	
	
	
	/*
	 * all for user
	 * 
	 */	
	
	@RequestMapping("getAllfile")
	public String getAllfile(Model model,String pageNow){
		List<File> files;
		Page page=null;
		int totalCount=fileService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		files=fileService.getAllFile(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		files=fileService.getAllFile(map);
		}
		model.addAttribute("page", page);
		model.addAttribute("files", files);
		return "filelist";
	}
	
	
	@RequestMapping("tofile")
	public String toFile(Model model,int fileId){
		File file=fileService.getFile(fileId);
		model.addAttribute("file", file);
		return "file";
	}
	
	/*
	 * all for admin
	 * 
	 */
	
	@RequestMapping("toAdminfile")
	public String toAdminFile(Model model,int fileId){
		File file=fileService.getFile(fileId);
		model.addAttribute("file", file);
		return "admin/file_detail";
	}
	
	@RequestMapping("allFile")
	public String getAllFile(Model model,String pageNow){
		List<File> files;
		Page page=null;
		int totalCount=fileService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		files=fileService.getAllFile(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		files=fileService.getAllFile(map);
		}
		model.addAttribute("page", page);
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
		   return "forward:allFile";
		}else{
		   return "forward:allFile";
		}
	}
	
	/*
	 * webApp
	 */
	@RequestMapping("toallFile")
	public String toAllFile(Model model){
		List<File> files=fileService.getAllFile_app();
		model.addAttribute("files", files);
		return "Webapp/";
	}
	
	@RequestMapping("tofile_app")
	public String tofile_app(Model model,int fileId){
		File file=fileService.getFile(fileId);
		model.addAttribute("file", file);
		return "Webapp/";
	}
	
}
