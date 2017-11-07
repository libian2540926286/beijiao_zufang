/**
 * 
 */
package com.beijiao.service;

import java.util.Map;

import com.beijiao.model.Admin;

/**
 * @author cmy
 *����11:15:37
 */
public interface AdminService {

    public Admin adminLogin(Map map);
	
	public int changeAdminPswd(String password);
			
}
