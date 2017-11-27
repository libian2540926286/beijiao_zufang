package com.beijiao.model;


import org.springframework.format.annotation.DateTimeFormat;

public class File {

	
	/*
	 * file文件的相应的属性
	 * fileId,filename,filepath(文件存储路径upload/file),filetime,filesource
	 */
	private int fileId;
	private String filename;
	private String filepath;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm") 
	private String filetime;
	private String filesource;
	
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getFiletime() {
		return filetime;
	}
	public void setFiletime(String filetime) {
		this.filetime = filetime;
	}
	public String getFilesource() {
		return filesource;
	}
	public void setFilesource(String filesource) {
		this.filesource = filesource;
	}
	
	
}
