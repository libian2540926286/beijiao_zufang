/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Discuss;

/**
 * @author cmy
 *����4:25:57
 */
public interface DiscussDao {

	/*
	 * ��ѯ����
	 */
	public Discuss selectDiscuss(int discussId);
	public List<Discuss> selectListDiscuss();
	/*
	 * �������
	 */
	public int insertReply(int discussId,String reply);
	public int insertDiscuss(Discuss discuss);
	/*
	 * ɾ������
	 */
	public int deleteDiscuss(int discussId);
}
