package com.beijiao.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.Admin;
import com.beijiao.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private AdminService adminService;
	
	@RequestMapping("test")
	public String test(){
		return "admin/mian";
	}
	@RequestMapping("login")
	public String Login(Admin admin){
		
		return "admin/top";
	}
	
	@RequestMapping("updatePswd")
	public String changPswd(String password){
		
		return "admin/admin";
	}
	
	@RequestMapping("loginOut")
	public String loginOut(){
		
		return "";
	}
	
}
