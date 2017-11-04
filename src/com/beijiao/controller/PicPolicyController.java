package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.PicPolicy;
import com.beijiao.service.PicPolicyService;

@Controller
@RequestMapping("/picpol")
public class PicPolicyController {

	@Resource
	private PicPolicyService picPolicyService;
	
	
	@RequestMapping("topicPol")
	public String getPicPol(int picPolId,Model model){
		PicPolicy picPol=picPolicyService.getPicPolicy(picPolId);
		model.addAttribute("picPol", picPol);
		return "success";
	}
	
	@RequestMapping("allpicPol")
	public String getAllPicPol(Model model){
		List<PicPolicy> picPols=picPolicyService.getAll();
		model.addAttribute("picPols", picPols);
		return "admin/picPolicylist";
	}
	
	@RequestMapping("addpicPol")
	public String insertPicPol(PicPolicy picPol,Model model){
		int  n=picPolicyService.insertPicPolicy(picPol);
		if(n==0){
		    return "admin/picPolicylist";
		}else{
			return "admin/picPolicy";
		}
	}
	
	@RequestMapping("deletepicPol")
	public String deletePicPol(int picPolId,Model model){
		int  n=picPolicyService.deletePicPolicy(picPolId);
		if(n==0){
		    return "";
		}else{
			return "";
		}
	}
	
}
