/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.NewsMapper;
import com.beijiao.model.News;
import com.beijiao.service.NewsService;

/**
 * @author cmy
 *����11:27:55
 */
@Service("newsService")
public class NewsServiceImpl implements NewsService {

	@Resource
	private NewsMapper newsMapper;
	/* (non-Javadoc)
	 * @see com.beijiao.service.NewsService#selectNews(int)
	 */
	@Override
	public News selectNews(int newsId) {
		// TODO Auto-generated method stub
		return newsMapper.selectNews(newsId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.NewsService#selectListNews()
	 */
	@Override
	public List<News> selectListNews() {
		// TODO Auto-generated method stub
		return newsMapper.selectListNews();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.NewsService#addNews(com.beijiao.model.News)
	 */
	@Override
	public int addNews(News news) {
		// TODO Auto-generated method stub
		return newsMapper.addNews(news);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.NewsService#deleteNews(int)
	 */
	@Override
	public int deleteNews(int newsId) {
		// TODO Auto-generated method stub
		return newsMapper.deleteNews(newsId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.NewsService#changeNews(java.lang.String)
	 */
	@Override
	public int changeNews(String newsContent) {
		// TODO Auto-generated method stub
		return newsMapper.changeNews(newsContent);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.NewsService#setHot(int)
	 */
	@Override
	public int setHot(int a) {
		// TODO Auto-generated method stub
		return newsMapper.setHot(a);
	}

	@Override
	public List<News> selectAllNews(Map map) {
		// TODO Auto-generated method stub
		return newsMapper.selectAll(map);
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return newsMapper.getRecordCount();
	}

}
