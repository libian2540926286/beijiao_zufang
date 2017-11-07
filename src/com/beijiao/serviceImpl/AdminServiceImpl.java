/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.AdminDao;
import com.beijiao.model.Admin;
import com.beijiao.service.AdminService;

/**
 * @author cmy
 *����11:24:22
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Resource
	private AdminDao adminDao;
	
	
	@Override
	public Admin adminLogin(Map map) {
		// TODO Auto-generated method stub
		return adminDao.adminLogin(map);
	}

	@Override
	public int changeAdminPswd(String password) {
		// TODO Auto-generated method stub
		return adminDao.changeAdminPswd(password);
	}

}
