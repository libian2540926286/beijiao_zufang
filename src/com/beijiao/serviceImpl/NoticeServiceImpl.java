package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.NoticeDao;
import com.beijiao.model.Notice;
import com.beijiao.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Resource
	private NoticeDao noticeDao;
	
	@Override
	public Notice selectNotice(int noticeId) {
		// TODO Auto-generated method stub
		return noticeDao.selectNotice(noticeId);
	}

	@Override
	public List<Notice> selectListNotice() {
		// TODO Auto-generated method stub
		return noticeDao.selectListNotice();
	}

	@Override
	public int insertNotice(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.insertNotice(notice);
	}

	@Override
	public int updateNotice(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.updateNotice(notice);
	}

	@Override
	public int deleteNotice(int noticeId) {
		// TODO Auto-generated method stub
		return noticeDao.deleteNotice(noticeId);
	}

	
}
