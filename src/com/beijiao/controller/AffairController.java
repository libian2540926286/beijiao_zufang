package com.beijiao.controller;

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
		return "Webapp/";
	}
	
	
	
	@RequestMapping("toAllAffair")
	public ModelAndView getAffairList(){
		ModelAndView mac=new ModelAndView();
		List<AffairWork> affairs1=affairService.selectAllWork(1);
		mac.addObject("affairs1",affairs1);
		List<AffairWork> affairs2=affairService.selectAllWork(2);
		mac.addObject("affairs2",affairs2);
		List<AffairWork> affairs3=affairService.selectAllWork(3);
		mac.addObject("affairs3",affairs3);
		List<AffairWork> affairs4=affairService.selectAllWork(4);
		mac.addObject("affairs4",affairs4);
		mac.setViewName("guide");
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
	
	
	/*
	 * WebApp
	 */
	@RequestMapping("getAffair")
	public String toAffair(int affWorkId,Model model){
		
		AffairWork affair=affairService.selectWork(affWorkId);
		model.addAttribute("affair", affair);
		return "Webapp/";
	}
	
	
	
	@RequestMapping("getAllAffair")
	public ModelAndView toAllAffair(){
		ModelAndView mac=new ModelAndView();
		List<AffairWork> affairs1=affairService.selectAllWork(1);
		mac.addObject("affairs1",affairs1);
		List<AffairWork> affairs2=affairService.selectAllWork(2);
		mac.addObject("affairs2",affairs2);
		List<AffairWork> affairs3=affairService.selectAllWork(3);
		mac.addObject("affairs3",affairs3);
		List<AffairWork> affairs4=affairService.selectAllWork(4);
		mac.addObject("affairs4",affairs4);
		mac.setViewName("Webapp/");
		return mac;
	}
}
