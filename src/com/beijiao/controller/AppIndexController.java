package com.beijiao.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;







import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beijiao.model.User;

@Controller
@RequestMapping("/app")
public class AppIndexController {

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
}
