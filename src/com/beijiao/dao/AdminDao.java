/**
 * 
 */
package com.beijiao.dao;

import java.util.Map;

import com.beijiao.model.Admin;


public interface AdminDao {

	

	public Admin adminLogin(Map map);
	
	public int changeAdminPswd(String password);
			
	
	
}
