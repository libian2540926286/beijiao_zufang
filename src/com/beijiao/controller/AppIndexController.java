package com.beijiao.controller;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beijiao.model.User;
import com.beijiao.service.DiscussService;
import com.beijiao.service.FileService;
import com.beijiao.service.NewsService;
import com.beijiao.service.NoticeService;
import com.beijiao.service.PClassService;
import com.beijiao.service.PicPolicyService;
import com.beijiao.service.PolInterpreService;
import com.beijiao.service.PolicyService;
import com.beijiao.service.UserService;

@Controller
@RequestMapping("/app")
public class AppIndexController {

	@Resource
	private UserService userService;
	@Resource
	private PolicyService policyService;
	@Resource
	private PicPolicyService picPolicyService;
	@Resource
	private PolInterpreService polInterpreService;
	@Resource
	private NewsService newsService;
	@Resource
	//如果不注解则会报空指针的错误
	private DiscussService discussService;
	@Resource
	private PClassService pclassService;
	@Resource
	private FileService fileService;
	@Resource
	private NoticeService noticeService;
	
	@RequestMapping("toApp")
	public String toIndex(Model model){
		
		return "Webapp/";
	}
	
	@ResponseBody 
	@RequestMapping("appLogin")
	public User appLogin(User user,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		System.out.println("测试");
		System.out.println(user+"测试app结果");
        return user;
	}
	
	
	/*
	 * login
	 */
	@ResponseBody 
	@RequestMapping("app_login")
	public String login(HttpSession session,User user,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		Map<String, String> map=new HashMap<String, String>();
		map.put("username1",user.getUsername());
		map.put("password",user.getPassword());	
		System.out.println(map);
		User users=userService.login(map);
		if(users!=null){	
			session.setAttribute("session", users);
			return "success";
		}else{
			return "fail";
		}
	}
			
	@ResponseBody 
	@RequestMapping("app_reg")
	public String SignIn(User user,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		System.out.println(user.getpClassName());
		String test;
		try {
			test = new String(user.getpClassName().getBytes("iso-8859-1"),"utf-8");
			user.setpClassName(test);
			System.out.println(test);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int success=userService.userResigster(user);
		if(success!=0){
			return "success";
		}else{
			
			return "fail";
		}
	}
}
