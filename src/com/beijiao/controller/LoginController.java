/**
 * 
 */
package com.beijiao.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.beijiao.dao.UserMapper;
import com.beijiao.model.Discuss;
import com.beijiao.model.File;
import com.beijiao.model.News;
import com.beijiao.model.PClass;
import com.beijiao.model.PicPolicy;
import com.beijiao.model.PolInterpre;
import com.beijiao.model.Policy;
import com.beijiao.model.User;
import com.beijiao.service.DiscussService;
import com.beijiao.service.FileService;
import com.beijiao.service.NewsService;
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
	/*
	 * test
	 */
	@RequestMapping("toindex")
	public String Login(Model model){
		
		
		//to index ,getpolicys,getdifferentTypePolicy,get朝阳policy
		List<Policy> policy1=policyService.selectPolicyType("国家");
		if(policy1.size()>8){
			policy1.subList(0, 7);
			model.addAttribute("policy1", policy1);
		}else{
			model.addAttribute("policy1", policy1);
		}
		
		List<Policy> policy2=policyService.selectPolicyType("市");
		model.addAttribute("policy2", policy2);
		List<Policy> policy3=policyService.selectPolicyType("区");
		model.addAttribute("policy3", policy3);
		
		/*
		 * 图片滚动
		 */
		List<PicPolicy> picPols=picPolicyService.getFive();
		model.addAttribute("picPols", picPols);
		
		//三级联动查询
		List<Policy> areas=policyService.selectPolicyArea("朝阳区");
		for(int i=0;i<areas.size();i++){
			areas.get(i).setPolTitle(areas.get(i).getPolTitle().substring(0, 16));
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
		model.addAttribute("polInterpres",polInterpres);
		//getNews
		List<News> hot=newsService.selectListNews();
		List<News> hots=null;
		if(hot.size()>10){
		    hots=hot.subList(0, 9);
		}else{
			hots=hot;
		}
		model.addAttribute("hots", hots);		
		//getDiscuss
		List<Discuss> discussion=discussService.selectListDiscuss();
		model.addAttribute("discussion", discussion);
		//filedown
		List<File> files=fileService.getLimitFile();		
		for(int i=0;i<files.size();i++){
		  if(files.get(i).getFilename().length()>17){
			files.get(i).setFilename(files.get(i).getFilename().substring(0, 16));
		   }
		}
		model.addAttribute("files", files);
		return "index";
	}
	
	@RequestMapping("test")
	public String test(){
	    return "admin/main";
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
			model.addAttribute("user", user);
			session.setAttribute("user", user);
			return "forward:toIndex";
		}else{
			/*mav.setViewName("test");
			return mav;*/
			return "login";
		}
				
	}
	
	@RequestMapping("loginOut")
	public String loginOut(){
		
		return "index/toindex";
	}
	
	/*
	 **register
	 */
	@RequestMapping("register1")
	public String SignIn(User user){
		int success=userService.userResigster(user);
		if(success!=0){
			
			return "success";
		}else{
			
			return "";
		}
	}
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
		
	}
	/**
	 * changePawd
	 */
	@RequestMapping("changepswd")
	public String changePassword(int userId,String password,Model model){
		
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
	public String getUser(Model model,int userId){
		User user=userService.getUser(userId);
		model.addAttribute("user", user);
		return "";
	}
	
	
}
