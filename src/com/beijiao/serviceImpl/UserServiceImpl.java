/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.UserMapper;
import com.beijiao.model.User;
import com.beijiao.service.UserService;

/**
 * @author cmy
 *����3:04:27
 * @param <UserMapper>
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;
	/* (non-Javadoc)
	 * @see com.beijiao.service.UserService#login(com.beijiao.model.User)
	 */
	@Override
	public User login(Map map) {
		// TODO Auto-generated method stub
		System.out.println(map+" UserServiceImpl");
		return userMapper.checkUser(map);
	}
	/* (non-Javadoc)
	 * @see com.beijiao.service.UserService#checkUser(java.util.Map)
	 */
	@Override
	public User checkUser(Map map) {
		// TODO Auto-generated method stub
		return userMapper.checkUser(map);
	}
	/* (non-Javadoc)
	 * @see com.beijiao.service.UserService#userResigster(com.beijiao.model.User)
	 */
	@Override
	public int userResigster(User user) {
		// TODO Auto-generated method stub
		return userMapper.userResigster(user);
	}
	/* (non-Javadoc)
	 * @see com.beijiao.service.UserService#changepswd(int, java.lang.String)
	 */
	@Override
	public int changepswd(int userId, String password,String oldPassword) {
		// TODO Auto-generated method stub
		return userMapper.changepswd(userId, password,oldPassword);
	}
	@Override
	public String selectPawd(int userId) {
		// TODO Auto-generated method stub
		return userMapper.selectPawd(userId);
	}
	@Override
	public List<User> getAllUser(Map map) {
		// TODO Auto-generated method stub
		return userMapper.getAllUser(map);
	}
	@Override
	public User getUser(int userId) {
		// TODO Auto-generated method stub
		return userMapper.getUser(userId);
	}
	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return userMapper.getRecordCount();
	}

}
