package com.beijiao.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.beijiao.model.AffairWork;
import com.beijiao.service.AffairService;

@Controller
@RequestMapping("/affair")
public class AffairController {

	@Resource
	private AffairService affairService;
	
	
	@RequestMapping("toAffair")
	public String selectAffair(int affWorkId,Model model){
		
		AffairWork affair=affairService.selectWork(affWorkId);
		model.addAttribute("affair", affair);
		return "ssss";
	}
	
	
	
	@RequestMapping("toAllAffair")
	public ModelAndView getAffairList(){
		ModelAndView mac=new ModelAndView();
		List<AffairWork> affairs=new ArrayList<AffairWork>();
		affairs=affairService.selectAllWork();
		mac.addObject("affairs",affairs);
		mac.setViewName("success");
		return mac;
	}
	
	@RequestMapping("addAffair")
	public String addAffair(AffairWork affair,Model model){
		int n=affairService.insertWork(affair);
		if(n!=0){
			return "forward:";
		}else{
			return "login";
		}	
	}

	@RequestMapping("updateAffair")
	public String updateAffair(AffairWork affair,Model model){
		int n=affairService.updateWork(affair);
		if(n!=0){
			return "forward:";
		}else{
			return "login";
		}	
	}
	/** 
	 * ɾ��˾
	 * */
	@RequestMapping("deleteAffair")
	public String deleteAffair(int affWorkId,Model model){
		int n=affairService.deleteWork(affWorkId);
		if(n!=0){
			return "success";
		}else{
			return "login";
		}	
	}	
}
