package com.beijiao.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

/*
 * upload、downloads
 */
public class UpAndDownload {

	
	/*
	 * 上传功能@RequestMapping("upPic")
	 */
	
	public String doUploadPic(MultipartFile file,HttpServletRequest request){
		 // 获取文件名
		String fileName=file.getOriginalFilename();
		//赋新文件名
		String newFileName=UUID.randomUUID()+fileName;
		//得到上传路径图片和文件		
		String path=request.getSession().getServletContext().getRealPath("upload/pic");
		File filepath = new File(path,newFileName);
		//判断路径是否存在，如果不存在则创建
		if(!filepath.exists()){
			filepath.mkdirs();
		}
		try {
			file.transferTo(filepath);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * 返回路径为upload/newFileName
		 */		
		return "upload/pic/"+newFileName;
	}
	
	/*
	 * 上传功能@RequestMapping("upDoc")
	 */
	public String doUploadDoc(MultipartFile file,HttpServletRequest request){
		 // 获取文件名
		String fileName=file.getOriginalFilename();
		System.out.println(fileName);
		//保存路径	
		ServletContext sc=request.getSession().getServletContext();
		System.out.println(sc+"sc");
		String path = sc.getRealPath("upload/doc");
		System.out.println(path+"path");
		System.out.println(path);
		File filepath = new File(path,fileName);
		//判断路径是否存在，如果不存在则创建
		if(!filepath.exists()){
			filepath.mkdirs();
		}
		try {
			file.transferTo(filepath);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * 将文件保存路径上传到数据库或者将路径传到另外的model，让其接收
		 * 路径为upload/newFileName
		 */		
		return "upload/doc/"+fileName;
	}
	
	
	/*
	 * 上传功能@RequestMapping("upDoc")
	 */
	public String doUploadFile(MultipartFile file,HttpServletRequest request){
		 // 获取文件名
		String fileName=file.getOriginalFilename();
		System.out.println(fileName+"测试文件下载");
		//保存路径	
		ServletContext sc=request.getSession().getServletContext();
		System.out.println(sc+"sc");
		String path = sc.getRealPath("upload/file");
		System.out.println(path+"path");
		System.out.println(path);
		File filepath = new File(path,fileName);
		//判断路径是否存在，如果不存在则创建
		if(!filepath.exists()){
			filepath.mkdirs();
		}
		try {
			file.transferTo(filepath);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * 将文件保存路径上传到数据库或者将路径传到另外的model，让其接收
		 * 路径为upload/newFileName
		 */		
		return "upload/file/"+fileName;
	}
	
	/*
	 * 下载功能@RequestMapping("down")
	 */
	
	public void doDownLadFile(String fileName,HttpServletRequest request,
	         HttpServletResponse response){
		//获取文件下载路径
		String path=request.getServletContext().getRealPath("upload/doc/");
		File file=new File(path,fileName);
		//判断文件是否存在
		if(file.exists()){
			//二进制数据流
			response.setContentType("application/force-download");
			//通知浏览器以attachment（下载方式）打开图片
			response.addHeader("Content-Disposition","attachment;fileName=" + fileName);
			//读取操作是用byte数组接收，转化为String字符串
			byte[] buffer=new byte[1024];
			//用于读取本地文件中的字节数据
			FileInputStream fis=null;
			BufferedInputStream bis=null;
			try {
				fis=new FileInputStream(file);
				bis=new BufferedInputStream(fis);
				//输出流
				OutputStream os=response.getOutputStream();
				//读取数据流
				int i=bis.read(buffer);
				/*用一个循环来不断的读取数据，当文件中数据都读完以后，
				 * is.read会返回（-1），那么只要没返回-1，就会一直不停的读取数据，
				 * 每次读取的长度就是设置的byte数组的长度
				 */
				while(i!=-1){
					os.write(buffer,0,1);
					i=bis.read(buffer);
					bis.close();
					fis.close();
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
