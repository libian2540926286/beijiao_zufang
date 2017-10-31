/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.News;

/**
 * @author cmy
 *上午11:15:37
 */
public interface NewsService {

	/*
	 * 查询新闻链接
	 */
	public News selectNews(int newsId);
	public List<News> selectListNews();
	
	/*
	 * 添加新闻
	 */
	public int addNews(News news);
	/*
	 * 删除新闻
	 */
	public int deleteNews(int newsId);
	
	/*
	 * 修改新闻
	 */
	public int changeNews(String newsContent);
	
	/**
	 * 设置成首页推荐
	 */
	public int setHot(int a);
}
