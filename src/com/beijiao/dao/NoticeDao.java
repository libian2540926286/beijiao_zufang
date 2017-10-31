package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Notice;

public interface NoticeDao {

	
	public Notice selectNotice(int noticeId);
	public List<Notice> selectListNotice();
	public int insertNotice(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(int noticeId);
}
