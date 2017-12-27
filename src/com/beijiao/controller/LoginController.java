package com.beijiao.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.beijiao.dao.UserMapper;
import com.beijiao.model.File;
import com.beijiao.model.Notice;
import com.beijiao.model.User;
import com.beijiao.service.FileService;
import com.beijiao.service.NoticeService;
import com.beijiao.service.UserService;

/**
 * @author cmy lh
 *time 2:29:29
 */

@Controller
@RequestMapping("/index") 
public class LoginController {

	@Resource
	private UserService userService;
	@Resource
	private FileService fileService;
	@Resource
	private NoticeService noticeService; 
	
	/*
	 * test
	 */
	@RequestMapping("toindex")
	public String Login(Model model){
		
		
		//filedown
		List<File> files=fileService.getLimitFile();		
		for(int i=0;i<files.size();i++){
		  if(files.get(i).getFilename().length()>17){
			files.get(i).setFilename(files.get(i).getFilename().substring(0, 16));
		   }
		}
		model.addAttribute("files", files);
		//notice
		List<Notice> notices = noticeService.selectListNotice();
		model.addAttribute("notices", notices);
		return "index";
	}
	
	@RequestMapping("test")
	public String test(){
	    return "login";
	}

	
	/*
	 * login
	 */
	@RequestMapping("login")
	public String login(HttpSession session,String username,String password,Model model){
		
		/*ModelAndView mav=new ModelAndView();*/
		Map map=new HashMap();
		map.put("username1",username);
		map.put("password",password);	
		System.out.println(map);
		User user=userService.login(map);
		//System.out.println(user+"user");
		if(user!=null){	
			//getUser
			//model.addAttribute("user", user);
			session.setAttribute("session", user);
			/*return "forward:toindex";*/
			return "redirect:/index/toindex";
		}else{
			/*mav.setViewName("test");
			return mav;*/
			return "login";
		}
				
	}
	
	@RequestMapping("logout")
	public String loginOut(HttpSession session){
		
		//清除session
		session.invalidate();
		return "forward:toindex";
	}
	
	/*
	 **register
	 */
	@RequestMapping("reg")
	public String SignIn(User user){
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
			
			return "login";
		}else{
			
			return "register";
		}
	}
	
	/*
	@RequestMapping("register2")
	public ModelAndView register(User user){
		
		System.out.println(user);
		ModelAndView mac=new ModelAndView();
		int success=userService.userResigster(user);
		if(success!=0){
			mac.setViewName("success");
			return mac;
		}else{
			mac.setViewName("");
			return mac;
		}
		
	}*
	/
	/**
	 * changePawd
	 */
	@RequestMapping("changepswd")
	public String changePassword(String userId1,String password,Model model){
		
		String userId2 = null;
		try {
			userId2 = new String(userId1.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int userId=Integer.parseInt(userId2);
		String oldPassword=userService.selectPawd(userId);
		if(password!=oldPassword){
		     int success=userService.changepswd(userId, password,oldPassword);
             if(success!=0){
			    return "success";
		     }else{
			    return "";
		    }
		}else{
			String notice="新密码不能与旧密码相同";
			model.addAttribute("notice", notice);
			return "";
		}
        
	}
	
	
		

	
	
	
}
