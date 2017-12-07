
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
import com.beijiao.model.Discuss;
import com.beijiao.model.File;
import com.beijiao.model.News;
import com.beijiao.model.Notice;
import com.beijiao.model.PClass;
import com.beijiao.model.PicPolicy;
import com.beijiao.model.PolInterpre;
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
	/*
	 * test
	 */
	@RequestMapping("toindex")
	public String Login(Model model){
		
		
		//to index ,getpolicys,getdifferentTypePolicy,get朝阳policy
		List<Policy> policy1=policyService.selectPolicyType("国家政策");
		if(policy1.size()>8){
			policy1.subList(0, 7);
			for(int i=0;i<policy1.size();i++){
				if(policy1.get(i).getPolTitle().length()>40){
					policy1.get(i).setPolTitle(policy1.get(i).getPolTitle().substring(0, 39));
				}
		     }
			model.addAttribute("policy1", policy1);
		}else{
			for(int i=0;i<policy1.size();i++){
				if(policy1.get(i).getPolTitle().length()>40){
					policy1.get(i).setPolTitle(policy1.get(i).getPolTitle().substring(0, 39));
				}
		     }
			model.addAttribute("policy1", policy1);
		}
		
		List<Policy> policy2=policyService.selectPolicyType("市级政策");
		for(int i=0;i<policy2.size();i++){
			if(policy2.get(i).getPolTitle().length()>40){
				policy2.get(i).setPolTitle(policy2.get(i).getPolTitle().substring(0, 39));
			}
	     }
		model.addAttribute("policy2", policy2);
		List<Policy> policy3=policyService.selectPolicyType("地方政策");
		for(int i=0;i<policy3.size();i++){
			if(policy3.get(i).getPolTitle().length()>40){
				policy3.get(i).setPolTitle(policy3.get(i).getPolTitle().substring(0, 39));
			}
	     }
		model.addAttribute("policy3", policy3);
		
		/*
		 * 图片滚动
		 */
		List<PicPolicy> picPols=picPolicyService.getFive();
		model.addAttribute("picPols", picPols);
		
		//三级联动查询
		List<Policy> areas=policyService.selectPolicyArea("朝阳区");
		for(int i=0;i<areas.size();i++){
			if(areas.get(i).getPolTitle().length()>17){
			    areas.get(i).setPolTitle(areas.get(i).getPolTitle().substring(0, 16));
			}
	     }
		model.addAttribute("areas", areas);
		//getPolInterpre
		List<PolInterpre> polInterpre=polInterpreService.selectListPolInterpre();
		List<PolInterpre> polInterpres=null;
		if(polInterpre.size()>8){
			polInterpres=polInterpre.subList(0, 7);
		}else{
			polInterpres=polInterpre;
		}
		for(int i=0;i<polInterpres.size();i++){
			if(polInterpres.get(i).getPolInterpreTitle().length()>38){
				polInterpres.get(i).setPolInterpreTitle(polInterpres.get(i).getPolInterpreTitle().substring(0, 37));
			}
	     }
		model.addAttribute("polInterpres",polInterpres);
		//getNews
		List<News> hot=newsService.selectListNews();
		for(int i=0;i<hot.size();i++){
			  if(hot.get(i).getNewsTitle().length()>17){
				  hot.get(i).setNewsTitle(hot.get(i).getNewsTitle().substring(0, 20)+"...");
			   }
			}
		List<News> hots=null;
		if(hot.size()>10){
		    hots=hot.subList(0, 9);
		}else{
			hots=hot;
		}
		model.addAttribute("hots", hots);		
		//getDiscuss
		List<Discuss> discussion=discussService.selectListDiscuss();
		for(int i=0;i<discussion.size();i++){
			  if(discussion.get(i).getDisTitle().length()>17){
				  discussion.get(i).setDisTitle(discussion.get(i).getDisTitle().substring(0, 16)+"...");
			   }
			}
		model.addAttribute("discussion", discussion);
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
		
	}*/
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
	
	
		
	@RequestMapping("touser")
	public String getUser(Model model,HttpSession session){
		User user=null;
		user=(User) session.getAttribute("session");
		System.out.println(user.getpClassName()+"获取所在行业");
		Date date = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String polTime = dateFormat.format(date); 
		System.out.println(polTime+"当前时间");
	
		List<Policy> policys=policyService.getLatestPolicy(polTime);
		model.addAttribute("policys", policys);
		List<Discuss> consults=discussService.selectListDiscussByUserId(user.getUserId());
		model.addAttribute("consults", consults);
		//List<Discuss> discuss=discussService.
		model.addAttribute("user", user);
		return "personal";
	}
	
	
}
