/**
 * 
 */
package com.beijiao.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beijiao.model.Discuss;
import com.beijiao.model.Reply;
import com.beijiao.model.User;
import com.beijiao.service.DiscussService;

@Controller
@RequestMapping("/consult")
public class DiscussController {

	@Resource
	private DiscussService discussService;
	
	/*
	 * all for user
	 * 
	 */
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
	
	@RequestMapping("toDiscuss")
	public String toDiscuss(Model model,int discussId){
		Discuss discuss=discussService.selectDiscuss(discussId);
		model.addAttribute("discuss", discuss);
		return "consult-list";
	}
	
	@RequestMapping("addConsult")
	public String addDiscuss(Discuss discuss){
		
		Date date = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String disTime = dateFormat.format(date);
		discuss.setDisTime(disTime);
		int n=discussService.insertDiscuss(discuss);
		if(n!=0){
			return "redirect:/consult/getallconsult";
		}else{
			return "login";
		}	
	}
	
	
	/*
	 * all for admin
	 * 
	 */

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
	/*
	 * get reply and unreply
	 * \*/
	@RequestMapping("getReplied")
	public String getReplied(Model model){
		List<Discuss> replied=discussService.selectReplied();
		List<Discuss> unreply=discussService.selectUnReply();
		model.addAttribute("replied", replied);
		model.addAttribute("unreply", unreply);
		return "admin/answerList";
	}
	
	/*
	 * see reply
	 * */
	@RequestMapping("getRepliedAnswer")
	public String getRepliedAnswer(Model model,int discussId){
		Discuss replied=discussService.selectDiscuss(discussId);
		model.addAttribute("replied", replied);
		return "admin/consult_detail";
	}
	
	@RequestMapping("addReply")
	public String getReplied(Model model,int discussId){
		Discuss replied=discussService.selectunRepliedById(discussId);
		model.addAttribute("unreply", replied);
		return "admin/consultAnswer";
	}
	
	@RequestMapping("addReplyAnswer")
	public String addReplyAnswer(Model model,Discuss discuss){
		if (discussService.updateReplyContent(discuss)) {
			return "redirect:/consult/getReplied";
		} else {
			return "error";
		}
	}
	
	
	/*
	 * WebApp
	 */
	@ResponseBody
	@RequestMapping("toDiscuss_app")
	public Discuss toDiscuss(HttpServletRequest request, HttpServletResponse response,int discussId){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		Discuss discuss=discussService.selectDiscuss(discussId);
		return discuss;
	}
	
	@ResponseBody
	@RequestMapping("alldiscuss_app")
	public List<Discuss> getAllDiscult(HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		List<Discuss> dis=discussService.selectListDiscuss_app();
		return dis;
	}
	
	
	
	@ResponseBody
	@RequestMapping("addDis_app")
	public Map<String,String> addDiscult(Discuss discuss,HttpServletRequest request, HttpServletResponse response){
		response.addHeader("Access-Control-Allow-Origin","*");//'*'表示允许所有域名访问，可以设置为指定域名访问，多个域名中间用','隔开
		System.out.println(discuss);
		Date date = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String disTime = dateFormat.format(date);
		discuss.setDisTime(disTime);
		Map<String,String> map=new HashMap<String, String>();
		int n=discussService.insertDiscuss(discuss);
		if(n!=0){
        	map.put("result", "success");
		    return map;
	     }else{
	    	 map.put("result", "fail");
			 return map;
	    }
	}
}
