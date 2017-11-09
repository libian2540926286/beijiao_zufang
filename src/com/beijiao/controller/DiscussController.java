/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.Discuss;
import com.beijiao.model.User;
import com.beijiao.service.DiscussService;

@Controller
@RequestMapping("/consult")
public class DiscussController {

	@Resource
	private DiscussService discussService;
	
	@RequestMapping("getDiscuss")
	public String getDiscuss(Model model,int discussId){
		Discuss discuss=discussService.selectDiscuss(discussId);
		model.addAttribute("discus",discuss);
		return "success";
	}
	
	@RequestMapping("getallconsult")
	public String getListDiscuss(Model model){
		List<Discuss> dis=discussService.selectListDiscuss();
		model.addAttribute("dis", dis);
		return "consult-list";
	}
	
	@RequestMapping("addConsult")
	public String addDiscuss(Discuss discuss){
				
		int n=discussService.insertDiscuss(discuss);
		if(n!=0){
			return "redirect:/consult/getallconsult";
		}else{
			return "login";
		}	
	}
	
	@RequestMapping("deleteConsult")
	public String deleteDiscuss(int discussId){
		int n=discussService.deleteDiscuss(discussId);
		if(n!=0){
			return "forward:getListDiscuss";
		}else{
			return "login";
		}	
	}
}
