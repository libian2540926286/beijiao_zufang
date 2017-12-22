

package com.beijiao.controller;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import javax.xml.ws.spi.http.HttpContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beijiao.model.Discuss;
import com.beijiao.model.Policy;
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
	public User login(HttpSession sessions,User user,HttpServletRequest request, HttpServletResponse response){
		response.setContentType("textml;charset=UTF-8");
		response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");
		System.out.println("test");
		Map<String, String> map=new HashMap<String, String>();
		map.put("username1",user.getUsername());
		map.put("password",user.getPassword());	
		User users=userService.login(map);
		System.out.println(users.getpClassName()+"test");
		sessions.setAttribute("session_app", users);
		//User test=(User)sessions.getAttribute("session_app");
		//System.out.println(test.getpClassName()+"session成功");
		return users;
	}
	
	
	@SuppressWarnings("unused")
	@ResponseBody 
	@RequestMapping("confirm_session")
	public Map<String, String> confirm_session(HttpSession sessions,HttpServletRequest request, HttpServletResponse response){
		response.setContentType("textml;charset=UTF-8");
		response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");
		User user;
		user = (User) sessions.getAttribute("session_app");
		Map<String, String> map = new HashMap<String, String>();
		if(user!=null){
			map.put("user",String.valueOf(user.getUserId()));
		    return map;
		}else{
			map.put("user", "confirm_session_fail");
			return map;
		}
	}
			
	@ResponseBody 
	@RequestMapping("app_reg")
	public Map<String, String> SignIn(User user,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		Map<String, String> map = new HashMap<String, String>();
		int success=userService.userResigster(user);
		if(success!=0){
			map.put("result", "success");
			return map;
		}else{
			map.put("result", "fail");
			return map;
		}
	}
	
	@ResponseBody
	@RequestMapping("changepswd")
	public Map<String,String> changePassword(HttpServletRequest request, HttpServletResponse response,User user){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		String oldPassword=userService.selectPawd(user.getUserId());
		Map<String,String> map=new HashMap<String, String>();
		if(user.getPassword()!=oldPassword){
		     int success=userService.changepswd(user.getUserId(), user.getPassword(),oldPassword);
             if(success!=0){
            	map.put("result", "success");
			    return map;
		     }else{
		    	 map.put("result", "fail");
				 return map;
		    }
		}else{
			map.put("result", "SamePswd");
			return map;
		}
        
	}
	
	@ResponseBody
	@RequestMapping("changemyFocus")
	public Map<String,String> changemyFocus(HttpServletRequest request, HttpServletResponse response,User user){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		Map<String,String> map=new HashMap<String, String>();
	     int success=userService.changeFocus(user.getUserId(), user.getpClassName());
         if(success!=0){
        	map.put("result", "success");
		    return map;
	     }else{
	    	 map.put("result", "fail");
			 return map;
	    }  
	}
	
	/*
	 * 推送用户关注的政策
	 */
	@ResponseBody 
	@RequestMapping("app_userPolicy")
	public List<Policy> app_userPolicy(HttpSession sessions,HttpServletRequest request, HttpServletResponse response){
		response.setContentType("textml;charset=UTF-8");
		response.setHeader("Access-Control-Allow-Origin", request.getHeader("Origin"));
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "0");
        response.setHeader("Access-Control-Allow-Headers", "Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("XDomainRequestAllowed","1");
		Date date = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String polTime = dateFormat.format(date);
		User user;                  
		user = (User) sessions.getAttribute("session_app");
		System.out.println(sessions.getAttribute("session_app"));
		List<Policy> policys=policyService.getLatestPolicy(polTime,user.getpClassName());
		return policys;
	}
	
	@ResponseBody
	@RequestMapping("userdiscuss_app")
	public List<Discuss> getUserDiscult(String id,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		int userId = Integer.parseInt(id);
		List<Discuss> consults=discussService.selectListDiscussByUserId(userId);
		return consults;
	}
	
}
