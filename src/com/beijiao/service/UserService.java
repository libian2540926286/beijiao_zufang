/**
 * 
 */
package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.User;

/**
 * @author cmy
 *����3:03:15
 */
public interface UserService {

	public User login(Map map);
	/**
	 * ����Ƿ���ڴ��û�
	 */
	public User checkUser(Map map);
	/*
	 * �û�ע��
	 */
	public int userResigster(User user);
	/*
	 * �����޸�
	 */
	public String selectPawd(int userId);
   public int changepswd(int userId,String password,String oldPassword);
   public List<User> getAllUser(Map map);
   public int getRecordCount();
   public User getUser(int userId);
}
