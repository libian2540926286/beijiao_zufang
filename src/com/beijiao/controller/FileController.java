package com.beijiao.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.repository.support.Repositories;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.File;
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
	
	@RequestMapping("downfile")
	public void downFile(String filename,HttpServletRequest request,HttpServletResponse response) throws Exception{
		/*filename = new String(filename.getBytes("iso8859-1"), "UTF-8");*/
		String fileName = request.getSession().getServletContext().getRealPath("upload")+"/file/"+filename;
		InputStream bis = new BufferedInputStream(new FileInputStream(fileName));
		String realname = fileName.substring(fileName.indexOf("_") + 1);  
		response.setHeader("content-disposition", "attachment;filename="  
                + URLEncoder.encode(realname, "UTF-8"));  
		BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
		int len = 0;
		while((len = bis.read()) != -1){
			out.write(len);
			out.flush();
		}
		out.close();
	}
	
	@RequestMapping("deletefile")
	public String deleteFile(int fileId){
		int n=fileService.deleteFile(fileId);
		if(n!=0){
			   return "forward:allFile";
			}else{
			   return "forward:allFile";
			}
	}
	/*
	 * webApp
	 */
	@ResponseBody
	@RequestMapping("toallFile_app")
	public List<File> toAllFile(HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		List<File> files=fileService.getAllFile_app();
		return files;
	}
	

	@ResponseBody
	@RequestMapping("tofile_app")
	public File tofile_app(HttpServletRequest request, HttpServletResponse response,int fileId){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		File file=fileService.getFile(fileId);
		return file;
	}
	
}
