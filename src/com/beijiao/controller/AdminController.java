package com.beijiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.beijiao.model.Admin;
import com.beijiao.model.PolInterpre;
import com.beijiao.model.User;
import com.beijiao.page.Page;
import com.beijiao.service.AdminService;
import com.beijiao.service.UserService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("sessionAdmin")
public class AdminController {

	@Resource
	private AdminService adminService;
	@Resource
	private UserService userService;
	
	@RequestMapping("test")
	public String test(){
		return "admin/main";
	}
	
	@RequestMapping("login")
	public String Login(String adminName,String adminPassword,Model model){
		
		System.out.println(adminName+adminPassword);
		HashMap<String, String> map=new HashMap<String,String>();
		map.put("adminName", adminName);
		map.put("adminPassword", adminPassword);
		System.out.println(map);
		Admin n=adminService.adminLogin(map);
		if(n!=null){
			model.addAttribute("sessionAdmin",n);
			return "admin/main";
		}else{
			
		   return "admin/login";
		}
	}
	
	@RequestMapping("logout")
	public String loginOut(SessionStatus status){	
		status.setComplete();
		return "admin/login";
	}
	
	
	@RequestMapping("updatePswd")
	public String changPswd(String password){
		
		return "admin/admin";
	}
	

	
	@RequestMapping("allUser")
	public String getAllUser(Model model,String pageNow){
		List<User> users;
		Page page=null;
		int totalCount=userService.getRecordCount();
		Map<String, Integer> map=new HashMap<String, Integer>();
		if(pageNow==null){
			page=new Page(1, totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		users=userService.getAllUser(map);
		}else{
			page=new Page(Integer.parseInt(pageNow), totalCount);
			map.put("startPos", page.getStartPos());
    		map.put("pageSize", page.getPageSize());
    		users=userService.getAllUser(map);
		}
		model.addAttribute("page", page);
		model.addAttribute("users", users);
		return "admin/user";
	}
	
}
