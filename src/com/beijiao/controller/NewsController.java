/**
 * 
 */
package com.beijiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.beijiao.model.News;
import com.beijiao.page.Page;
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
	
	

	/*
	 * all for user
	 * 
	 */
    @RequestMapping("toNews")
    public String selectNews(int newsId,Model model){
    	
    	News news=newsService.selectNews(newsId);
    	System.out.println(news.getNewsContent());
    	model.addAttribute("news",news);
    	return "news";
	
    }
	
	/*
	 * all news for Users
	 * */
    @RequestMapping("tolistNews")
 public String selectListNews(String pageNow,Model model){
    	
    	List<News> news;
       	Page page=null;
		int totalCount=newsService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		news=newsService.selectAllNews(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		news=newsService.selectAllNews(map);
		}
		model.addAttribute("page", page);
    	model.addAttribute("news",news);
    	return "newslist";	
    }
    
    

	/*
	 * all for admin
	 * 
	 */
    
    @RequestMapping("toAdminNews")
    public String selecAdmintNews(int newsId,Model model){
    	
    	News news=newsService.selectNews(newsId);
    	model.addAttribute("news",news);
    	return "admin/media_detail";
	
    }
    
    @RequestMapping("toallNews")
    public String selectAllNews(Model model,String pageNow){
       	
       	List<News> news;
       	Page page=null;
		int totalCount=newsService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		news=newsService.selectAllNews(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		news=newsService.selectAllNews(map);
		}
		model.addAttribute("news", news);
		model.addAttribute("page", page);
       	return "admin/medialist";	
       }
    
    
  
    @RequestMapping("addNews")
    public String addNews(News news,MultipartFile file,HttpServletRequest request){
    	UpAndDownload upFile=new UpAndDownload();
		String filename=upFile.doUploadPic(file, request);
		news.setNewsLink(filename);
    	int n=newsService.addNews(news);
    	if(n!=0){
    		return "forward:toallNews";
    	}else{
    		return "login";
    	}
    }

    
    @RequestMapping("deleteNews")
    public String deleteNews(int newsId){
    	int n=newsService.deleteNews(newsId);
    	if(n!=0){
    		return "forward:toallNews";
    	}else{
    		return "login";
    	}
    }


    
    @RequestMapping("updateNews")
    public String updateNews(String newsContent){
    	int n=newsService.changeNews(newsContent);
    	if(n!=0){
    		return "forward:toListNews";
    	}else{
    		return "login";
    	}
    }


    @RequestMapping("setHotNews")
    public String setHotNews(int a){
    	int n=newsService.setHot(a);
    	if(n!=0){
    		return "forward:toListNews";
    	}else{
    		return "login";
    	}
    }
    
    /*
     * WebApp
     */
    @ResponseBody 
    @RequestMapping("toAdminNews_app")
    public News selecAppNews(int newsId,HttpServletRequest request, HttpServletResponse response){
    	response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
    	News news=newsService.selectNews(newsId);
    	return news;
	
    }
    @ResponseBody  
    @RequestMapping("appNews_app")
    public List<News> selectAppNews(HttpServletRequest request, HttpServletResponse response){
    	response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
       	List<News> news=newsService.selectListNews();	
       	return news;	
       }
}
