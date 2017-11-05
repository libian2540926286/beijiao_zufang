/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.News;
import com.beijiao.service.NewsService;

/**
 * @author cmy lh
 *����4:57:02
 */
@Controller
@RequestMapping("/news")
public class NewsController {

	@Resource
	private NewsService newsService;
	
	
	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	/*��ѯ����*/
    @RequestMapping("toNews")
    public String selectNews(int newsId,Model model){
    	
    	News news=newsService.selectNews(newsId);
    	//news.setNewsContent(news.getNewsContent().replace(" ", "<br />"+"&nbsp;&nbsp;"));
    	System.out.println(news.getNewsContent());
    	model.addAttribute("news",news);
    	return "success";
	
    }
	
	/*��ѯ��������*/
    @RequestMapping("tolistNews")
 public String selectListNews(Model model){
    	
    	List<News> news1=newsService.selectListNews();
    	System.out.println(news1);
    	model.addAttribute("news1",news1);
    	return "medialist";	
    }
    @RequestMapping("toallNews")
    public String selectAllNews(Model model){
       	
       	List<News> news1=newsService.selectListNews();
       	System.out.println(news1);
       	model.addAttribute("news1",news1);
       	return "admin/medialist";	
       }
	/*��������*/
    @RequestMapping("addNews")
    public String addNews(News news,MultipartFile file,HttpServletRequest request){
    	UpAndDownload upFile=new UpAndDownload();
		String filename=upFile.doUploadPic(file, request);
		news.setNewsLink(filename);
    	int n=newsService.addNews(news);
    	if(n!=0){
    		return "forward:toListNews";
    	}else{
    		return "login";
    	}
    }
	/*ɾ������*/
    @RequestMapping("deleteNews")
    public String deleteNews(int newsId){
    	int n=newsService.deleteNews(newsId);
    	if(n!=0){
    		return "forward:toListNews";
    	}else{
    		return "login";
    	}
    }
	/*�޸�����*/
    @RequestMapping("updateNews")
    public String updateNews(String newsContent){
    	int n=newsService.changeNews(newsContent);
    	if(n!=0){
    		return "forward:toListNews";
    	}else{
    		return "login";
    	}
    }
    /*�����ȵ�����*/
    @RequestMapping("setHotNews")
    public String setHotNews(int a){
    	int n=newsService.setHot(a);
    	if(n!=0){
    		return "forward:toListNews";
    	}else{
    		return "login";
    	}
    }
}
