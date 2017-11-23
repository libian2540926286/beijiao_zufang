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
import com.beijiao.model.Reply;
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
		model.addAttribute("discuss",discuss);
		return "consult";
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
		System.out.print(discussId);
		if(n!=0){
			return "redirect:/consult/getReplied";
		}else{
			return "login";
		}	
	}
	/*��ѯ����*/
	@RequestMapping("getReplied")
	public String getReplied(Model model){
		List<Discuss> replied=discussService.selectReplied();
		List<Discuss> unreply=discussService.selectUnReply();
		model.addAttribute("replied", replied);
		model.addAttribute("unreply", unreply);
		return "admin/answerList";
	}
	/*��ӻظ�����*/
	@RequestMapping("getRepliedAnswer")
	public String getRepliedAnswer(Model model,int discussId){
		List<Discuss> unreply=discussService.selectunRepliedById(discussId);
		model.addAttribute("unreply", unreply);
		return "admin/consultAnswer";
	}
	@RequestMapping("addReplyAnswer")
	public String addReplyAnswer(Model model,Discuss discuss){
		if (discussService.updateReplyContent(discuss)) {
			return "redirect:/consult/getReplied";
		} else {
			return "/error";
		}
	}
	
	
	/*
	 * WebApp
	 */
	@RequestMapping("toDiscuss")
	public String toDiscuss(Model model,int discussId){
		Discuss discuss=discussService.selectDiscuss(discussId);
		model.addAttribute("discuss",discuss);
		return "Webapp/";
	}
	
	@RequestMapping("alldiscuss")
	public String getAllDiscult(Model model){
		List<Discuss> dis=discussService.selectListDiscuss_app();
		model.addAttribute("dis", dis);
		return "Webapp/";
	}
	
	@RequestMapping("addDis")
	public String addDiscult(Discuss discuss){
				
		int n=discussService.insertDiscuss(discuss);
		if(n!=0){
			return "redirect:/consult/alldiscuss";
		}else{
			return "login";
		}	
	}
}
