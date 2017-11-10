/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Discuss;

/**
 * @author cmy
 *����4:31:46
 */
public interface DiscussService {

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
