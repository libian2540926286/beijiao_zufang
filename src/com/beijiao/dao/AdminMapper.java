/**
 * 
 */
package com.beijiao.dao;

import java.util.Map;

import com.beijiao.model.Admin;

/**
 * @author cmy
 *上午11:11:38
 */
public interface AdminMapper {

	
	/*
	 * 管理员登录
	 */
	public Admin adminLogin(Map map);
	/*
	 * 修改密码
	 */
	public int changeAdminPswd(String password);
			
	
	
}
